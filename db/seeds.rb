require 'poke-api-v2'
p "resetting"

User.destroy_all
Quizz.destroy_all

p "creating users"

user1 = User.create(email: "dorian@example.com", password: "123456")
user1.save

p "fetching pokemons"

bulbasaur = {
  types: PokeApi.get(pokemon: "bulbasaur").types,
  habitat: PokeApi.get(pokemon_species: "bulbasaur").habitat.name,
  description: PokeApi.get(pokemon_species: "bulbasaur").flavor_text_entries[0].flavor_text.gsub(/[[:space:]]/, ' ')
}
charmander = {
  types: PokeApi.get(pokemon: "charmander").types,
  habitat: PokeApi.get(pokemon_species: "charmander").habitat.name,
  description: PokeApi.get(pokemon_species: "charmander").flavor_text_entries[0].flavor_text.gsub(/[[:space:]]/, ' ')
}
squirtle = {
  types: PokeApi.get(pokemon: "squirtle").types,
  habitat: PokeApi.get(pokemon_species: "squirtle").habitat.name,
  description: PokeApi.get(pokemon_species: "squirtle").flavor_text_entries[0].flavor_text.gsub(/[[:space:]]/, ' ')
}
pikachu = {
  types: PokeApi.get(pokemon: "pikachu").types,
  habitat: PokeApi.get(pokemon_species: "pikachu").habitat.name,
  description: PokeApi.get(pokemon_species: "pikachu").flavor_text_entries[0].flavor_text.gsub(/[[:space:]]/, ' ')
}
eevee = {
  types: PokeApi.get(pokemon: "eevee").types,
  habitat: PokeApi.get(pokemon_species: "eevee").habitat.name,
  description: PokeApi.get(pokemon_species: "eevee").flavor_text_entries[0].flavor_text.gsub(/[[:space:]]/, ' ')
}

p "creating quizzes"
quizz1 = Quizz.create(
  title: "Guess the pokemon's name"
)

questions_quizz_1 = Question.create([
  {content: bulbasaur[:description], quizz: quizz1, answers: Answer.create([
    {content: "Bulbasaur", correct_answer: true},
    {content: "Charmander", correct_answer: false},
    {content: "Pikachu", correct_answer: false},
    {content: "Rick Astley", correct_answer: false}])
  },
  {content: pikachu[:description], quizz: quizz1, answers: Answer.create([
    {content: "General Kenobi", correct_answer: false},
    {content: "Bulbasaur", correct_answer: false},
    {content: "Charmander", correct_answer: false},
    {content: "Pikachu", correct_answer: true}])
  },
  {content: eevee[:description], quizz: quizz1, answers: Answer.create([
    {content: "General Grievous", correct_answer: false},
    {content: "Eevee", correct_answer: true},
    {content: "Pikachu", correct_answer: false},
    {content: "Squirtle", correct_answer: false}])
  },
  {content: squirtle[:description], quizz: quizz1, answers: Answer.create([
    {content: "Charizard", correct_answer: false},
    {content: "Charmander", correct_answer: false},
    {content: "Squirtle", correct_answer: true},
    {content: "Psykokwak", correct_answer: false}])
  },
  {content: charmander[:description], quizz: quizz1, answers: Answer.create([
    {content: "Charizard", correct_answer: false},
    {content: "Charmander", correct_answer: true},
    {content: "Agumon", correct_answer: false},
    {content: "Muk", correct_answer: false}])
  },
])

quizz1.save
p "quizz 1 created"

quizz2 = Quizz.create(
  title: "Pokemon habitats"
)

questions_quizz_2 = Question.create([
  {content: "Bulbasaur usualy lives in #{bulbasaur[:habitat]}", quizz: quizz2, answers: Answer.create([
    {content: "True", correct_answer: true},
    {content: "False", correct_answer: false}])
  },
  {content: "Pikachu usualy lives in #{eevee[:habitat]}", quizz: quizz2, answers: Answer.create([
    {content: "True", correct_answer: false},
    {content: "False", correct_answer: true}])
  },
  {content: "Squirtle usualy lives in #{bulbasaur[:habitat]}", quizz: quizz2, answers: Answer.create([
    {content: "True", correct_answer: false},
    {content: "False", correct_answer: true}])
  },
  {content: "Charmander usualy lives in #{charmander[:habitat]}", quizz: quizz2, answers: Answer.create([
    {content: "True", correct_answer: true},
    {content: "False", correct_answer: false}])
  },
  {content: "Eevee usualy lives in #{eevee[:habitat]}", quizz: quizz2, answers: Answer.create([
    {content: "True", correct_answer: true},
    {content: "False", correct_answer: false}])
  },
])

quizz2.save
p "quizz 2 created"

quizz3 = Quizz.create(
  title: "Pokemon types"
)

questions_quizz_3 = Question.create([
  {content: "What's one of Bulbasaur's pokemon types?", quizz: quizz3, answers: Answer.create([
    {content: "#{bulbasaur[:types][0].type.name}", correct_answer: true},
    {content: "#{pikachu[:types][0].type.name}", correct_answer: false},
    {content: "#{eevee[:types][0].type.name}", correct_answer: false}])
  },
  {content: "What's one of Pikachu's pokemon types?", quizz: quizz3, answers: Answer.create([
    {content: "#{charmander[:types][0].type.name}", correct_answer: false},
    {content: "#{pikachu[:types][0].type.name}", correct_answer: true},
    {content: "#{squirtle[:types][0].type.name}", correct_answer: false}])
  },
  {content: "What's one of Squirtle's pokemon types?", quizz: quizz3, answers: Answer.create([
    {content: "#{bulbasaur[:types][0].type.name}", correct_answer: false},
    {content: "#{eevee[:types][0].type.name}", correct_answer: true},
    {content: "#{squirtle[:types][0].type.name}", correct_answer: true}])
  },
  {content: "What's one of Eevee's pokemon types?", quizz: quizz3, answers: Answer.create([
    {content: "#{charmander[:types][0].type.name}", correct_answer: false},
    {content: "#{pikachu[:types][0].type.name}", correct_answer: false},
    {content: "#{eevee[:types][0].type.name}", correct_answer: true}])
  },
  {content: "What's one of Charmander's pokemon types?", quizz: quizz3, answers: Answer.create([
    {content: "#{squirtle[:types][0].type.name}", correct_answer: false},
    {content: "#{bulbasaur[:types][0].type.name}", correct_answer: true},
    {content: "#{charmander[:types][0].type.name}", correct_answer: false}])
  },
])

quizz3.save
p "quizz 3 created"

quizz4 = Quizz.create(
  title: "Mixed quizz"
)

questions_quizz_4 = Question.create([
  {content: "What's one of Pikachu's pokemon types?", quizz: quizz4, answers: Answer.create([
    {content: "#{charmander[:types][0].type.name}", correct_answer: false},
    {content: "#{pikachu[:types][0].type.name}", correct_answer: true},
    {content: "#{squirtle[:types][0].type.name}", correct_answer: false}])
  },
  {content: "Eevee usualy lives in #{charmander[:habitat]}", quizz: quizz4, answers: Answer.create([
    {content: "True", correct_answer: true},
    {content: "False", correct_answer: false}])
  },
  {content: charmander[:description], quizz: quizz4, answers: Answer.create([
    {content: "Charizard", correct_answer: false},
    {content: "Charmander", correct_answer: true},
    {content: "Agumon", correct_answer: false},
    {content: "Muk", correct_answer: false}])
  },
  {content: "Pikachu usualy lives in #{eevee[:habitat]}", quizz: quizz4, answers: Answer.create([
    {content: "True", correct_answer: false},
    {content: "False", correct_answer: true}])
  },
  {content: "What's one of Charmander's pokemon types?", quizz: quizz4, answers: Answer.create([
    {content: "#{squirtle[:types][0].type.name}", correct_answer: false},
    {content: "#{bulbasaur[:types][0].type.name}", correct_answer: true},
    {content: "#{charmander[:types][0].type.name}", correct_answer: false}])
  },
])

quizz4.save
p "quizz 4 created"

p "done"