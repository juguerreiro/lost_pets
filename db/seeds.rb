# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Criando alguns pets no banco de dados"

Pet.create!(name: "Joca", address: "Rua linda", species: "Cachorro", found_on: Date.today - 30)
Pet.create!(name: "Jon Jon", address: "Rua das flores", species: "Gato", found_on: Date.today - 15)
Pet.create!(name: "Luke", address: "Rua bela", species: "Cachorro", found_on: Date.today)

puts "todos os pets foram cadastrados"
