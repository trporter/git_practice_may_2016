# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
300.times do
q = Question.create title: Faker::Company.bs,
                    body:  Faker::Hipster.paragraph
5.times { q.answers.create(body: Faker::ChuckNorris.fact) } if q.persisted?
end

["Sports", "Art", "Cats", "Tech", "News"].each do |cat|
  Category.create name: cat
end
puts Cowsay.say "generated!"
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
