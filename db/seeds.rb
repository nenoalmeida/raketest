# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do |i|
    user_name = Faker::Name.name
    user_email = Faker::Internet.email
    user = "#{user_name} = #{user_email}"
    puts "Getting #{user}"
User.create(name: user_name, email: user_email)
end
