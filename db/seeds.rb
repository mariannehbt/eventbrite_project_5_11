# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

nb_users = 20
nb_users_yopmail = 10
nb_events = 20
nb_attendances = 20

#Create n fake users with Faker gem
nb_users.times do |i|
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::GreekPhilosophers.quote, email: Faker::Internet.email, encrypted_password: "test")
	puts "User ##{i +1} created"
end

#Create n fake users with a yopmail adress with Faker gem
nb_users_yopmail.times do |i|
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::GreekPhilosophers.quote, email: Faker::Ancient.primordial + '@yopmail.com', encrypted_password: "test")
	puts "User ##{i +1} created"
end

#Create n fake events with Faker gem linked to users
nb_events.times do |i|
	Event.create(start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now), duration: rand(1..3), title: Faker::Book.title, description: Faker::GreekPhilosophers.quote, price: rand(1..1000), location: Faker::Address.city)
	puts "Event ##{i +1} created"
end

#Create n fake attendances with Faker gem linked to users and events
nb_attendances.times do |i|
	Attendance.create(stripe_customer_id: Faker::Dessert.variety)
	puts "Attendance ##{i +1} created"
end