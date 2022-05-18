p "resetting"

User.destroy_all
Quizz.destroy_all

p "creating users"

user1 = User.create(email: "dorian@example.com", password: "123456")
user1.save

p "creating quizzes"

quizz1 = Quizz.create(
  title: "Hello there"
)

questions = Question.create([
  {content: "Who said Hello There ?", quizz: quizz1, answers: Answer.create([
    {content: "General Kenobi", correct_answer: true},
    {content: "General Grievous", correct_answer: false},
    {content: "Darth Vador", correct_answer: false},
    {content: "Rick Astley", correct_answer: false}])
  },
  {content: "Who said Hello There ?", quizz: quizz1, answers: Answer.create([
    {content: "General Kenobi", correct_answer: true},
    {content: "General Grievous", correct_answer: false},
    {content: "Darth Vador", correct_answer: false},
    {content: "Rick Astley", correct_answer: false}])
  },
  {content: "Who said Hello There ?", quizz: quizz1, answers: Answer.create([
    {content: "General Kenobi", correct_answer: true},
    {content: "General Grievous", correct_answer: false},
    {content: "Darth Vador", correct_answer: false},
    {content: "Rick Astley", correct_answer: false}])
  },
  {content: "Who said Hello There ?", quizz: quizz1, answers: Answer.create([
    {content: "General Kenobi", correct_answer: true},
    {content: "General Grievous", correct_answer: false},
    {content: "Darth Vador", correct_answer: false},
    {content: "Rick Astley", correct_answer: false}])
  },
])

quizz1.save

p "done"