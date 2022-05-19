# Hello there !
Here is my final result for Study Advisor\'s tech challenge.

This app is a quizz app where questions and answers are based on [PokeApi](https://pokeapi.co/) data.
You can access a live version [here](https://study-advisor-tech-challenge.herokuapp.com/).

It was coded in one day, and I also took half a day to think about the design (mainly user stories and database structure).

You\'ll find various useful information in this readme.
## Basic informations
* **Versions**
The project runs with Ruby 3.1.2, Rails 7.0.2 and bootstrap 5.1.3
* **Gems and packages**
The project uses [Devise](https://github.com/heartcombo/devise) for authentication.

## Installation
Basic steps to run the app locally.
### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.1.2`
If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv):

```shell
rbenv install 3.1.2
```

Or using [RVM](https://github.com/rvm/rvm):

```shell
rvm install "ruby-3.1.2"
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialize the database
Create the database:
```shell
rails db:create
```

Run migrations:
```shell
rails db:migrate
```

Populate the database using the seed:
```shell
rails db:seed
```

### Fire up the server
First run:

```shell
rails s
```
Then go to your favorite browser and type [localhost:3000](localhost:3000) in your search bar.

You should be good to go!


**Following are the guidelines I followed to create this project, written by [junkiesan](https://github.com/junkiesan):**
## Guidelines
- Fork this repository.
- You can add any framework, library or plugin you'd like.
- Make sure the application works out-of-the box once you're done.
- Push changes to your git fork.
- Add a short description on how to run your program for anyone who would like to test it.
- Check the finished features in the Assignment and Bonus section by putting an 'X' ([X]) in between the brackets.
- Quality over quantity, better half of the features 100% done, than 100% of the features half-done.

## Assignment :
  - You are asked to build a simple Quiz App around the Pokemon universe using the [PokeApi](https://pokeapi.co/).
  - The quizzes can have any shape as you want or imagine (What is this Pokemon ?, What is the type of this Pokemon ?, etc.)

### User
- [x] A user can log in with a valid username and password through a login screen

- [x] A user can see a collection of quizzes

- [x] A user can start a quiz

- [x] A user can answer 5 questions on a quiz

- [x] A user can see the scores of his quizzes


### Quizz
- [x] A quizz has a Title

- [x] A quizz has a maximum of 5 questions

- [x] A quizz is considered passed if +60% of questions are answered correctly

### Question
- [x] A question has a maximum of 4 answers

- [x] A question has only 1 possible correct answer


## Bonus
- Some nice to haves, when there is time to spare.

- [ ] A quizz can have a dificulty level

- [ ] Add admin role

- [ ] A user with admin role can create and edit quizzes

- [ ] A user can come back to a started quizz at the question he stopped

- [ ] Add or improve a feature of your own choice
