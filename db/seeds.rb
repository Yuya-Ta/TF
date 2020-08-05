# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1000.times do |n|
  number = Faker::Number.between(from: 1, to: 5)
  number1 = Faker::Number.between(from: 1, to: 200)
  number2 = Faker::Number.between(from: 10, to: 990)
  number3= Faker::Number.between(from: 1, to: 6)
  number4= Faker::Number.between(from: 1, to: 5)
  number5= Faker::Number.between(from: 1, to: 5)
  number6= Faker::Number.between(from: 1, to: 5)
  number7= Faker::Number.between(from: 1, to: 5)
  number8= Faker::Number.between(from: 1, to: 5)
  number9= Faker::Number.between(from: 1, to: 5)
  sentence1 = Faker::Lorem.sentence
  sentence2 = Faker::Lorem.sentence
  start_date=Faker::Date.between(from: '2014-01-01', to: '2015-09-25')
  finish_date=Faker::Date.between(from: '2015-09-26', to: '2016-09-25')

  Post.create!(bad_content: sentence1,
               satisfaction: number,
               workbook_id: number1,
               user_id: number3,
               good_content: sentence2,
               detail: number4,
               volume: number5,
               ease: number6,
               difficulty: number7,
               period: number8,
               points: number2,
               counts: number9,
               start_date: start_date,
               finish_date: finish_date
               )
end
