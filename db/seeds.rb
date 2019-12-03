# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Scenario.destroy_all
Step.destroy_all


u1 = User.create!(email: "test@test.com", password: "123456",
                  first_name: "fang",
                  last_name: "b"

                  )

s1 = Scenario.create!(
  title: 'getting around',
  description: 'testing out'

)

s2 = Scenario.create!(
  title: 'communication',
  description: 'testing out again'

)

step1 = Step.create!(
  category: 2,
  priority: 1,
  instruction: 'long press this button',
  scenario: s1
)


step2 = Step.create!(
  category: 2,
  priority: 2,
  instruction: 'long press this button again',
  scenario: s1
)

step3 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'tap to continue',
  scenario: s1
)

puts "Created #{User.count} User"
puts "Created #{Scenario.count} scenarios"
puts "Created #{Step.count} steps"