Badge.all.destroy_all
Record.all.destroy_all
Step.all.destroy_all
Scenario.all.destroy_all
User.all.destroy_all

puts '====================== Seeding users ... ======================'

u1 = User.create!(email: "test@test.com", password: "123456",
                  user_name: "Grandma Li"
                  )
puts 'Created a test user'

puts '==================== Seeding scenarios ... ===================='

s1 = Scenario.create!(
  title: '学会打车',
  description: '【滴滴出行App】您可以通过手机随时随地呼叫或预约出租车，快车，专车等。
  关键步骤包括：输入上车地点和目的地、选择网约车类型以及呼叫。司机接单后，您可以打电话联系司机师傅，明确上车地点。',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355257/i-can-tech/scenarios-taxi_3x_qut63w.png'
)
puts 'Created scenario 1'

s2 = Scenario.create!(
  title: '查询公交',
  description: '【高德地图App】您可以通过地图软件查找最快捷的出行路线。
  关键步骤包括：输入“我的位置”以及目的地、选择出行方式。',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355257/i-can-tech/scenarios-bus_3x_o64nbg.png'
)
puts 'Created scenario 2'

s3 = Scenario.create!(
  title: '视频通话',
  description: '【微信App】您可以通过微信群，随时随地与家人进行语音或视频通话。
  关键步骤包括：打开微信群语音或视频通话、选择通话对象。',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355256/i-can-tech/scenarios-call_3x_iskqxa.png'
)
puts 'Created scenario 3'

s4 = Scenario.create!(
  title: '网上购物',
  description: '内容准备中......',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355260/i-can-tech/scenarios-grocery_3x_x2fqli.png'
)
puts 'Created scenario 4'

s5 = Scenario.create!(
  title: '收养宠物',
  description: '内容准备中......',
  imgurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579355256/i-can-tech/scenarios-cat_3x_e3ri0h.png'
)
puts 'Created scenario 5'

puts '====================== Seeding steps ... ======================'

puts '------------- Group call -------------'

# Group call demo

step1 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/video/upload/v1579419100/i-can-tech/Groupcall-demo_loy6f3.mp4'
)
puts 'Created groupcall demo'

# Group call walkthrough

step2 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419099/i-can-tech/Groupcall-walkthrough-1_bankkz.png'
)
puts 'Created groupcall walkthrough step 1'

step3 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419098/i-can-tech/Groupcall-walkthrough-2_zhkdtm.png'
)
puts 'Created groupcall walkthrough step 2'

step4 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419098/i-can-tech/Groupcall-walkthrough-3_hqy075.png'
)
puts 'Created groupcall walkthrough step 3'

step5 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419099/i-can-tech/Groupcall-walkthrough-4_dlbsba.png'
)
puts 'Created groupcall walkthrough step 4'

step6 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419099/i-can-tech/Groupcall-walkthrough-5_w9sftz.png'
)
puts 'Created groupcall walkthrough step 5'

step7 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419099/i-can-tech/Groupcall-walkthrough-6_dgoaen.png'
)
puts 'Created groupcall walkthrough step 6'

step8 = Step.create!(
  category: 2,
  priority: 7,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419100/i-can-tech/Groupcall-walkthrough-7_ycxuzf.png'
)
puts 'Created groupcall walkthrough step 7'

# Group call quiz

step9 = Step.create!(
  category: 3,
  priority: 1,
  question: "从哪里可以找到语音通话的选项？",
  right_answer: 2,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419098/i-can-tech/Groupcall-quiz-1_zocprl.png'
)
puts 'Created groupcall quiz 1'

step10 = Step.create!(
  category: 3,
  priority: 2,
  question: "语音通话开始后，如何切换到视频聊天？",
  right_answer: 3,
  scenario: s3,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579419099/i-can-tech/Groupcall-quiz-2_al5ktr.png'
)
puts 'Created groupcall quiz 2'

puts '------------- Gaode map --------------'

# Gaode map demo

step11 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/video/upload/v1579420635/i-can-tech/Map-demo-compressed_paoftx.mp4'
)
puts 'Created Gaode Map demo'

# Gaode map walkthrough

step12 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420633/i-can-tech/Map-walkthrough-1_non3ji.png'
)
puts 'Created Gaode Map walkthrough step 1'

step13 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420633/i-can-tech/Map-walkthrough-2_gchtv7.png'
)
puts 'Created Gaode Map walkthrough step 2'

step14 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420634/i-can-tech/Map-walkthrough-3_eb6uyw.png'
)
puts 'Created Gaode Map walkthrough step 3'

step15 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420634/i-can-tech/Map-walkthrough-4_hixxoc.png'
)
puts 'Created Gaode Map walkthrough step 4'

step16 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420634/i-can-tech/Map-walkthrough-5_fiurov.png'
)
puts 'Created Gaode Map walkthrough step 5'

step17 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420634/i-can-tech/Map-walkthrough-6_ngtphq.png'
)
puts 'Created Gaode Map walkthrough step 6'

# Gaode map quiz

step18 = Step.create!(
  category: 3,
  priority: 1,
  question: "你想去正大广场，如何查询推荐方案？",
  right_answer: 3,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420633/i-can-tech/Map-quiz-1_ckp0rx.png'
)
puts 'Created Gaode Map quiz 1'

step19 = Step.create!(
  category: 3,
  priority: 2,
  question: "点击哪里可以选择出行方式？",
  right_answer: 1,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420633/i-can-tech/Map-quiz-2_vxj7zg.png'
)
puts 'Created Gaode Map quiz 2'

step20 = Step.create!(
  category: 3,
  priority: 3,
  question: "以下哪个方案步行最少？",
  right_answer: 2,
  scenario: s2,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/image/upload/v1579420633/i-can-tech/Map-quiz-3_pvp7jr.png'
)
puts 'Created Gaode Map quiz 3'

puts '---------------- Didi ----------------'

# Didi demo

step21 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s1,
  mediaurl: 'https://res.cloudinary.com/tinylittlemaggie/video/upload/v1579403499/i-can-tech/Didi-demo-compressed_nrfwmc.mp4'
)
puts 'Created Didi demo'

# Didi walkthrough

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

# Didi quiz

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

puts '=========================== Summary ==========================='

puts "Created #{User.count} users"
puts "Created #{Scenario.count} scenarios"
puts "Created #{Step.count} steps"
