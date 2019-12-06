# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Step.all.destroy_all
Record.all.destroy_all
Scenario.all.destroy_all
User.all.destroy_all

u1 = User.create!(email: "test@test.com", password: "123456",
                  first_name: "fang",
                  last_name: "b"
                  )

s1 = Scenario.create!(
  title: 'Find a taxi',
  description: 'Didi can help you to order a car to meet your friends.
                - Input your address & destination address
                - Choose the car type
                - Send the order, and wait for the diver to take your order.'
)
s1.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/taxi@3x.png"), filename: SecureRandom.hex(20))

s2 = Scenario.create!(
  title: 'Hop on the bus',
  description: 'Map can help you find your way to where you want to go.
                - Input your destination address
                - Choose  a transportation'
)
s2.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/bus@3x.png"), filename: SecureRandom.hex(20))

s3 = Scenario.create!(
  title: 'Call your friends',
  description: 'You can talk with your family members with Wechat group call.
                - Inside a group, open  the call
                - Select members you want to talk with'
)
s3.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/call@3x.png"), filename: SecureRandom.hex(20))

s4 = Scenario.create!(
  title: 'Call your friends',
  description: 'You can talk with your family members with Wechat group call.
                - Inside a group, open  the call
                - Select members you want to talk with'
)
s4.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/grocery@3x.png"), filename: SecureRandom.hex(20))

s5 = Scenario.create!(
  title: 'Call your friends',
  description: 'You can talk with your family members with Wechat group call.
                - Inside a group, open  the call
                - Select members you want to talk with'
)
s5.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/cat@3x.png"), filename: SecureRandom.hex(20))

# groupchat demo seeds
step1 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s3
)
step1.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupchat.mp4"), filename: SecureRandom.hex(20))

# groupchat walkthrough seeds
step2 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s3
)
step2.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-1.jpeg"), filename: SecureRandom.hex(20))

step3 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s3
)
step3.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-2.jpeg"), filename: SecureRandom.hex(20))

step4 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s3
)
step4.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-3.jpeg"), filename: SecureRandom.hex(20))

step5 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s3
)
step5.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-4.jpeg"), filename: SecureRandom.hex(20))

step6 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s3
)
step6.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-5.jpeg"), filename: SecureRandom.hex(20))

step7 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s3
)
step7.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-6.jpeg"), filename: SecureRandom.hex(20))

step8 = Step.create!(
  category: 2,
  priority: 7,
  scenario: s3
)
step8.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

# groupchat practice seeds
step9 = Step.create!(
  category: 3,
  priority: 1,
  scenario: s3
)

step10 = Step.create!(
  category: 3,
  priority: 2,
  scenario: s3
)

# map demo seeds
step11 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s2
)
step11.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map.mp4"), filename: SecureRandom.hex(20))

# didi demo seeds
step12 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s1
)
step12.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Didi.mp4"), filename: SecureRandom.hex(20))

puts "Created #{User.count} User"
puts "Created #{Scenario.count} scenarios"
puts "Created #{Step.count} steps"
