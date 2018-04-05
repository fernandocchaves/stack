# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_01 = User.create({name: "Teste 01", email: "teste_01@teste.com.br"})
user_02 = User.create({name: "Teste 02", email: "teste_02@teste.com.br"})
user_03 = User.create({name: "Fernando Chaves", email: "fernandocchaves@gmail.com"})

question_01 = Question.create({user: user_01, title: 'Question 01', content: "Teste pergunta", hits: 1})
anwser_01 = Anwser.create({user: user_02, question: question_01, content: "Resposta 01"})
anwser_02 = Anwser.create({user: user_03, question: question_01, content: "Resposta 02"})
anwser_03 = Anwser.create({user: user_01, question: question_01, content: "Resposta 03"})

question_02 = Question.create({user: user_03, title: 'Question 02', content: "Teste pergunta", hits: 1})
anwser_04 = Anwser.create({user: user_01, question: question_02, content: "Resposta 04"})
anwser_05 = Anwser.create({user: user_01, question: question_02, content: "Resposta 05"})

question_03 = Question.create({user: user_03, title: 'Question 03', content: "Teste pergunta", hits: 1})
question_04 = Question.create({user: user_03, title: 'Question 04', content: "Teste pergunta", hits: 1})
question_05 = Question.create({user: user_03, title: 'Question 05', content: "Teste pergunta", hits: 1})