10.times do
  Exercise.create(
    menu: Faker::Name.name,
    calorie: rand(50..500)
  )
end

10.times do
  ExerciseRecord.create(
    exercise_id: rand(1..10),
    number: rand(50..500),
    exercise_time: rand(50..500)
  )
end

10.times do
  Meal.create(
    name: Faker::Name.name,
    calorie: rand(1..10),
    carbohydrate: rand(50..500),
    protein: rand(1.10),
    lipid: rand(1.10)
  )
end

10.times do
  MealRecord.create(
    meal_id: rand(1..10),
    meal_time: rand(50..500),
    quantity: rand(50..500)
  )
end

10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    age: rand(15..60)
  )
end

10.times do
  Weight.create(
    weight: rand(55..60),
    measurement_time: rand(55..60),
    body_fat_percentage: rand(10..25)
  )
end