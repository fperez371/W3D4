# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Poll.destroy_all 
Question.destroy_all 
AnswerChoice.destroy_all 

 john = User.create!(username: 'John')
 kelly = User.create!(username: 'Kelly')
 jack =  User.create!(username: 'Jack')
 jill = User.create!(username: 'Jill')


 mayor = Poll.create!(author: john, title: "Mayor" )
 mayor2 =  Poll.create!(author_id:kelly.id, title: "Mayor" )
 judge = Poll.create!(author_id:jack.id, title: "Judge" )
 senator = Poll.create!(author_id:jill.id, title: "Senator" )

 q1 = Question.create!(poll_id: mayor.id, text: "what's your policy?")
 q2 = Question.create!(poll_id: mayor.id, text: "will you raise taxes?")
 q3 = Question.create!(poll_id: judge.id, text: "what's your favorite color?")
 q4 = Question.create!(poll_id: senator.id, text: "hows it going?")

#  a1 = AnswerChoice.question_id = q1.id
#  a1.text = "honosty"
#  a1.save!

 a1 = AnswerChoice.create!(question_id: q1.id, text: "honesty")
 a2 = AnswerChoice.create!(question_id: q2.id, text: "fairness")
 a3 = AnswerChoice.create!(question_id: q2.id, text: "trust")
 a4 = AnswerChoice.create!(question_id: q4.id, text: "money")
 a5 = AnswerChoice.create!(question_id: q3.id, text: "honesty")

 Response.create!(respondent: john, answer_choice_id: a1 )
 Response.create!(respondent: kelly, answer_choice_id: a2 )
 Response.create!(respondent: jack, answer_choice_id: a3 )
 Response.create!(respondent: jill, answer_choice_id: a4 )
 Response.create!(respondent: jill, answer_choice_id: a1 )

