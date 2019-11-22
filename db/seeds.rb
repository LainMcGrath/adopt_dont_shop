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

dog = shelter_1.pets.create( image: "https://www.washingtonpost.com/resizer/kPkFQsQjvSIjfXG-mFXDEpxq6-4=/767x0/smart/arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/HB4AT3D3IMI6TMPTWIZ74WAR54.jpg",
                  name: "Sparky",
                  description: "A lovable pup! ",
                  approximate_age: 7,
                  sex: "male",
                  adoptable: true)

cat = shelter_2.pets.create( image: "https://timesofindia.indiatimes.com/thumb/msid-67586673,width-800,height-600,resizemode-4/67586673.jpg", 
                  name: "Louise",
                  description: "MEOW!",
                  approximate_age: 7,
                  sex: "male",
                  adoptable: false)
