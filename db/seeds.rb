Badge.all.destroy_all
Record.all.destroy_all
Step.all.destroy_all
Scenario.all.destroy_all
User.all.destroy_all

# ------------------------------- Create users ------------------------------- #

u1 = User.create!(email: "test@test.com", password: "123456",
                  user_name: "fang"
                  )
puts 'users created'

# ----------------------------- Create Scenarios ----------------------------- #

s1 = Scenario.create!(
  title: '学会打车',
  description: '【滴滴出行App】您可以通过手机随时随地呼叫或预约出租车，快车，专车等。
  关键步骤包括：输入上车地点和目的地、选择网约车类型以及呼叫。司机接单后，您可以打电话联系司机师傅，明确上车地点。',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355257/i-can-tech/scenarios-taxi_3x_qut63w.png'
)
puts 'scenario 1 done'

s2 = Scenario.create!(
  title: '查询公交',
  description: '【高德地图App】您可以通过地图软件查找最快捷的出行路线。
  关键步骤包括：输入“我的位置”以及目的地、选择出行方式。',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355257/i-can-tech/scenarios-bus_3x_o64nbg.png'
)
puts 'scenario 2 done'

s3 = Scenario.create!(
  title: '视频通话',
  description: '【微信App】您可以通过微信群，随时随地与家人进行语音或视频通话。
  关键步骤包括：打开微信群语音或视频通话、选择通话对象。',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355256/i-can-tech/scenarios-call_3x_iskqxa.png'
)
puts 'scenario 3 done'

s4 = Scenario.create!(
  title: '网上购物',
  description: '内容准备中......',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355260/i-can-tech/scenarios-grocery_3x_x2fqli.png'
)
puts 'scenario 4 done'

s5 = Scenario.create!(
  title: '收养宠物',
  description: '内容准备中......',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355256/i-can-tech/scenarios-cat_3x_e3ri0h.png'
)
puts 'scenario 5 done'

# ------------------------------- Create Steps ------------------------------- #

# ------- Didi -------- #

# Demo

step21 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/video/upload/v1579403499/i-can-tech/Didi-demo-compressed_nrfwmc.mp4'
)
puts 'Created Didi demo'

# Walkthrough

step22 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417728/i-can-tech/Didi-walkthrough-1_nycmmq.png'
)
puts 'Created Didi walkthrough step 1'

step23 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417729/i-can-tech/Didi-walkthrough-2_d0gvgh.png'
)
puts 'Created Didi walkthrough step 2'

step24 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417728/i-can-tech/Didi-walkthrough-3_wtjbys.png'
)
puts 'Created Didi walkthrough step 3'

step25 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417728/i-can-tech/Didi-walkthrough-4_b2ig9c.png'
)
puts 'Created Didi walkthrough step 4'

step26 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417729/i-can-tech/Didi-walkthrough-5_iupsiu.png'
)
puts 'Created Didi walkthrough step 5'

step27 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417729/i-can-tech/Didi-walkthrough-6_dvidhi.png'
)
puts 'Created Didi walkthrough step 6'

step28 = Step.create!(
  category: 2,
  priority: 7,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417729/i-can-tech/Didi-walkthrough-7_amf8xq.png'
)
puts 'Created Didi walkthrough step 7'

# Quiz

step29 = Step.create!(
  category: 3,
  priority: 1,
  question: "点击哪里可修改上车地点？",
  right_answer: 2,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417727/i-can-tech/Didi-quiz-1_ue09ud.png'
)
puts 'Created Didi quiz 1'

step30 = Step.create!(
  category: 3,
  priority: 2,
  question: "点击哪里可以联系司机师傅？",
  right_answer: 3,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417728/i-can-tech/Didi-quiz-2_trkpqz.png'
)
puts 'Created Didi quiz 2'

step31 = Step.create!(
  category: 3,
  priority: 3,
  question: "假设你明天要去机场，点击哪里可预约用车？",
  right_answer: 2,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579417728/i-can-tech/Didi-quiz-3_x4iakn.png'
)
puts 'Created Didi quiz 3'


# ----- Groupcall ----- #

step1 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s3
)
step1.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/wechat-groupcall.mp4"), filename: SecureRandom.hex(20))
puts 'step 1 done'

# groupchat walkthrough seeds
step2 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s3
)
step2.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-1.png"), filename: SecureRandom.hex(20))
puts 'step 2 done'

step3 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s3
)
step3.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-2.png"), filename: SecureRandom.hex(20))
puts 'step 3 done'

step4 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s3
)
step4.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-3.png"), filename: SecureRandom.hex(20))
puts 'step 4 done'

step5 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s3
)
step5.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-4.png"), filename: SecureRandom.hex(20))
puts 'step 5 done'

step6 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s3
)
step6.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-5.png"), filename: SecureRandom.hex(20))
puts 'step 6 done'

step7 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s3
)
step7.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-6.png"), filename: SecureRandom.hex(20))
puts 'step 7 done'

step8 = Step.create!(
  category: 2,
  priority: 7,
  scenario: s3
)
step8.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.png"), filename: SecureRandom.hex(20))
puts 'step 8 done'

# groupchat practice seeds
step9 = Step.create!(
  category: 3,
  priority: 1,
  question: "从哪里可以找到语音通话的选项？",
  right_answer: 2,
  scenario: s3
)
step9.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/groupcall-quiz%201.png"), filename: SecureRandom.hex(20))
puts 'step 9 done'

step10 = Step.create!(
  category: 3,
  priority: 2,
  question: "语音通话开始后，如何切换到视频聊天？",
  right_answer: 3,
  scenario: s3
)
step10.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/groupcall-quiz%202.png"), filename: SecureRandom.hex(20))
puts 'step 10 done'

# map demo seeds
step11 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s2
)
step11.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/gaode-map.mp4"), filename: SecureRandom.hex(20))
puts 'step 11 done'

#map walkthrough seeds
step12 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s2
)
step12.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-1.png"), filename: SecureRandom.hex(20))
puts 'step 12 done'

step13 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s2
)
step13.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-2.png"), filename: SecureRandom.hex(20))
puts 'step 13 done'

step14 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s2
)
step14.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-3.png"), filename: SecureRandom.hex(20))
puts 'step 14 done'

step15 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s2
)
step15.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-4.png"), filename: SecureRandom.hex(20))
puts 'step 15 done'

step16 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s2
)
step16.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-5.png"), filename: SecureRandom.hex(20))
puts 'step 16 done'

step17 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s2
)
step17.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-6.png"), filename: SecureRandom.hex(20))
puts 'step 17 done'

# Gaode Map practice seeds
step18 = Step.create!(
  category: 3,
  priority: 1,
  question: "你想去正大广场，如何查询推荐方案？",
  right_answer: 3,
  scenario: s2
)
step18.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/map-quiz%201.png"), filename: SecureRandom.hex(20))
puts 'step 18 done'

step19 = Step.create!(
  category: 3,
  priority: 2,
  question: "点击哪里可以选择出行方式？",
  right_answer: 1,
  scenario: s2
)
step19.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/map-quiz%202.png"), filename: SecureRandom.hex(20))
puts 'step 19 done'

step20 = Step.create!(
  category: 3,
  priority: 3,
  question: "以下哪个方案步行最少？",
  right_answer: 2,
  scenario: s2
)
step20.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/map-quiz%203.png"), filename: SecureRandom.hex(20))
puts 'step 20 done'



puts "Created #{User.count} User"
puts "Created #{Scenario.count} scenarios"
puts "Created #{Step.count} steps"
