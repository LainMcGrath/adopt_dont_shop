# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shelter_1 = Shelter.create( name:    "Denver Dog Shelter",
                            address: "123 Main St",
                            city:    "Denver",
                            state:   "CO",
                            zip:     "80206")
shelter_2 = Shelter.create( name:    "Denver Cat Shelter",
                            address: "123 Meow St",
                            city:    "Denver",
                            state:   "CO",
                            zip:     "80206")