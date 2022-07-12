# rails g mirgration NameOfMigration table:references - adds a foreign key
#then rails db:migrate (and rails db:create before if we haven't yet)
#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
liz = User.create(first_name: "Liz", last_name: "Clawson", password:"123456", email: "emclawson1@gmail.com")
angel = User.create(first_name: "Angel", last_name: "Robiou", password:"123456", email: "angel@gmail.com")
caitlin = User.create(first_name: "Caitlin", last_name: "Baker", password:"123456", email: "cwbaker80@gmail.com")
laksh = User.create(first_name: "Laksh", last_name: "Khurana", password:"123456", email: "lakshkhurana3@gmail.com")
aiden = User.create(first_name: "Aiden", last_name: "Baker", password:"123456", email: "aiden@gmail.com")

item1 = Item.create(name: "favorite jeans", type: "pants", size: "10", color: "black", description: "black slim fit jeans with back pockets", user_id: 1)

