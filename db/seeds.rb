require 'faker'

WeightClass.create!(wc: 97)
WeightClass.create!(wc: 132)
WeightClass.create(wc: 155)

10.times do 
  Wrestler.create!(
    name: Faker::Name.name, 
    age: 15,
    gender: "Female",
    weight_class_id: 2
  )
end

puts "Created 3 Weight classes, and adds 10 wrestlers"

