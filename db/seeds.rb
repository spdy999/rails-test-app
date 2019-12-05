# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#ActiveRecord::Base.connection.tables.each do |table|
#  ActiveRecord::Base.connection.execute("DELETE FROM #{table};")
#end


#3.times do
#  User.create({
#                  username: Faker::Internet.user_name,
#                  email: Faker::Internet.email
#              })
#end

1.times do
  Article.create({
                     title: Faker::Book.title,
                     description: Faker::Lorem.sentence,
                     user: User.first
                 })
end
