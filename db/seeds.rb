# The data below can be loaded with the rake db:seed (or created alongside the db with db:setup).

User.destroy_all
SharedStory.destroy_all
Post.destroy_all
Request.destroy_all
ChatMessage.destroy_all


# Users who are admin
au1 = User.create!(username: "Merel", first_name: "Merel", description: "so I would love to meet people", last_name: "Steenbrink", kind: "dutchie", city: "Amsterdam", email: "merel@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467119218/merel_yht8jd.jpg", admin: "true")

puts "Creating users!"
# Users with kind = 'refugee'
ru1 = User.create!(username: "Ricky", description: "I would love to meet people", first_name: "Ricardo", last_name: "Del Mar", kind: "refugee", city: "Hoofddorp", email: "raindance@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114164/male5_j6lwpc.jpg")
ru2 = User.create!(username: "Zohra", description: "so I would love to meet people", first_name: "Zohra", last_name: "Tannous", kind: "refugee", city: "Roosendaal", email: "z.tannous@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114165/woman3_v2mxuq.jpg")
ru3 = User.create!(username: "BennyM", description: "so I would love to meet people", first_name: "Ben", last_name: "Marsischky", kind: "refugee", city: "Amsterdam", email: "bbm@live.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467111212/rm1_idtzyx.jpg")
ru4 = User.create!(username: "Tuds", description: "so I would love to meet people", first_name: "Thomas", last_name: "Wilkinson", kind: "refugee", city: "Amsterdam", email: "tuds@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114163/male8_whbakl.jpg")
ru5 = User.create!(username: "Amena01", description: "so I would love to meet people", first_name: "Amena", last_name: "Nour", kind: "refugee", city: "Den Haag", email: "amena01@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114164/woman6_oicbvm.jpg")
ru6 = User.create!(username: "Tarek", description: "Hello, I'm From Syria. Living in Amsterdam, I'm Electrical Engineer have four years of experience in one of the biggest Industries. I'm looking for a job opportunity. I speak Fluent English , Arabic , and Learning Dutch. I hope someone can help. Furthermore I love cooking and it would be great to cook together and practice some dutch. Thanks! Good day", first_name: "Tarek", last_name: "Nour", kind: "refugee", city: "Amsterdam", email: "t.nour@hotmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114164/male5_j6lwpc.jpg")
ru7 = User.create!(username: "EssaKhattan", description: "so I would love to meet people", first_name: "Essa", last_name: "Khattan", kind: "refugee", city: "Utrecht", email: "essa_k@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114164/woman8_xtxxbs.jpg")
ru8 = User.create!(username: "Abdullah Nasef", description: "Hello! I'd like to introduce myself. I'm Abdullah Nashef , I'm from Syria-Aleppo , 23 years old. I studied Geometric, I've good experience in IT stuff Programming - Web Design - Software ( Lapotop + Smartphones + PC ) I live in Amsterdam ( Schipluidenlaan ) ", first_name: "Abdulah", last_name: "Nasef", kind: "refugee", city: "Amsterdam", email: "abdullah@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114165/male2_sbfcv6.png")


# Users with kind = 'dutchie'
du1 = User.create!(username: "Bastiaan22", description: "so I would love to meet people", first_name: "Bastiaan", last_name: "Overwater", kind: "dutchie", city: "Hoofddorp", email: "bas_de-beste@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467115580/male10_zbtu97.jpg")
du2 = User.create!(username: "Sooph", description: "I would love to share my skills", first_name: "Sophia", last_name: "De Jong", kind: "dutchie", city: "Utrecht", email: "sooph_87@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114165/woman5_y5n9zj.jpg")
du3 = User.create!(username: "Miriam", description: "so I would love to meet people", first_name: "Miriam", last_name: "De Vries", kind: "dutchie", city: "Amsterdam", email: "mdevries@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114165/woman4_c4germ.jpg")
du4 = User.create!(username: "Luukie", description: "so I would love to meet people", first_name: "Luuk", last_name: "Bakker", kind: "dutchie", city: "Rotterdam", email: "luukie@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467115869/male11_quggfa.jpg")
du5 = User.create!(username: "Noor", description: "I love fixing bikes and would love to teach other people how to do it.", first_name: "Eleonore", last_name: "Van Den Helder", kind: "dutchie", city: "Schiedam", email: "new_noor@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114164/woman7_ljino3.jpg")
du6 = User.create!(username: "Stijn", description: "always looking for new adventures.", first_name: "Stijn", last_name: "Janssen", kind: "dutchie", city: "Almere", email: "stijn_jj@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467116147/male12_rm2hkj.jpg")
du7 = User.create!(username: "fleur_zozo", description: "I would love to meet people", first_name: "Fleur", last_name: "Bieman", kind: "dutchie", city: "Amsterdam", email: "f.bieman@gmail.com", password: "password", password_confirmation: "password", picture: "http://res.cloudinary.com/gg/image/upload/v1467114166/woman1_vxqkrq.jpg")

puts "Creating posts!"

# Posts
p7 = Post.create!(subject: "Photography", created_at: "29-6-2016", content: "I am a professional photographer specialized in taking pictures on events. So if you're looking for a photographer at your event, contact me!", author_id: ru3.id, postal_code: "1071 GK", city: "Amsterdam", category: "skills")
sleep 0.4
p1 = Post.create!(subject: "Biking to Zaandam", content: "There are really nice windmills near Zaamdam. Let's take our bikes, explore the windmills and have lunch somewhere nearby during one of the upcoming weekends! Who is in?", author_id: du1.id, postal_code: "1505 CL", city: "Zaandam", category: "social")
sleep 0.4
p2 = Post.create!(subject: "Origami",created_at: "25-6-2016",  content: "Is there anyone who knows a bit of origami? I started learning how to make some birds and really want to learn more! ", author_id: ru4.id, postal_code: "1066 VH", city: "Amsterdam", category: "skills")
sleep 0.4
p9 = Post.create!(subject: "React",created_at: "23-6-2016",  content: "The last three months I learned how to code in Ruby and Ruby on rails. Right now, I would love to pimp my portofolio with some nice react functions. Is there someone who would like to help me with that?" , author_id: au1.id, postal_code: "1075WS", city: "Amsterdam", category: "skills")
sleep 0.4
p10 = Post.create!(subject: "Fixing bikes", created_at: "28-6-2016", content: "I am crazy about bikes, and love fixing them. I would like to teach other people how to fix bikes.", author_id: au1.id, postal_code: "1075WS", city: "Amsterdam", category: "skills")
sleep 0.4
p3 = Post.create!(subject: "Learn Dutch", created_at: "28-6-2016", content: "I have been taking Dutch classes and would love to practice with a native speaker. Zullen we koffie drinken?", author_id: ru5.id, postal_code: "2518 BK", city: "Den Haag", category: "language")
sleep 0.4
p4 = Post.create!(subject: "Gezellig samen eten", content: "I would like to meet for dinner and hear your stories! I will make a typical Dutch meal ('hutspot' or something similar) and would really like to try some traditional meals from other places as well. Let me know if you are interested!", author_id: du3.id, postal_code: "1075WS", city: "Amsterdam", category: "skills")
sleep 0.4
p5 = Post.create!(subject: "Speak Dutch", created_at: "25-6-2016", content: "If anyone would like to practice some Dutch with me in exchange for learning some Arabic, let's meet! الى اللقاء, بسرعة", author_id: du3.id, postal_code: "1018 DM", city: "Amsterdam", category: "language")
sleep 0.4
p6 = Post.create!(subject: "Code with me!", created_at: "29-6-2016", content: "I am learning how to code websites in Ruby on Rails, and to practice a bit more I would be happy to do a little workshop to teach a bit of code and build something nice together. Any ideas for websites are welcome, and you don't need to know much about code to join.", author_id: ru2.id, postal_code: "2518 AX", city: "Den Haag", category: "skills")
sleep 0.4
p8 = Post.create!(subject: "Make a meal with tofu", created_at: "27-6-2016", content: "I am vegetarian and like cooking. I have been trying to make something nice with tofu but it does not taste that great. Does anyone have nice recipes and wants to cook something together? ", author_id: ru2.id, postal_code: "4705 RA", city: "Roosendaal", category: "social")
sleep 0.4
p11 = Post.create!(subject: "Cooking and talking dutch", content: "Hi I love cooking and would like to teach some nice recipes from my home country. In the meanwhile, we can practice some Dutch?", author_id: ru6.id, postal_code: "1076WS", city: "Amsterdam", category: "skills")
sleep 0.4
# Requests
puts "Creating requests!"

r1 = Request.create!(message: "I think that sounds like fun! Where are you biking from?", status: "pending", messenger_id: ru1.id, post_id: p1.id)
r2 = Request.create!(message: "I took a course on making origami vegetables. Let's meet up and I can show you. When are you available?", status: "pending", messenger_id: du7.id, post_id: p2.id)
r3 = Request.create!(message: "That sounds great! Where are you from? I live in Utrecht as well and I know a very nice cafe to go to. Can you meet sometime in the weekend?", status: "pending", messenger_id: du2.id, post_id: p3.id)
r4 = Request.create!(message: "I am very interested! Can you also show me how you make these Dutch meals? I can cook with you and show you some of my homecooked recipes too.", status: "pending", messenger_id: ru2.id, post_id: p4.id)
r5 = Request.create!(message: "Let's meet! I am learning Dutch and can tell you some Arabic too.", status: "pending", messenger_id: ru5.id, post_id: p5.id)
r6 = Request.create!(message: "Building websites sounds awesome! I have been doing some online courses and would really like to meet you. Are you organizing an event for many people or do you want to meet one on one?", status: "pending", messenger_id: du5.id, post_id: p6.id)
r7 = Request.create!(message: "Photography is one of my biggest hobbies! Let's meet and I can show you some tricks I have learned! Do you have time to meet next weekend?", status: "pending", messenger_id: du3.id, post_id: p7.id)
r8 = Request.create!(message: "I have a recipe with soyasaus and tofu which is pretty nice. Do you want to meet sometime and cook together?", status: "pending", messenger_id: du6.id, post_id: p8.id)
r10 = Request.create!(message: "Hi, I am Abdullah Nashef. I did a lot of jquery and would love to help you! Maybe a weird question: I used to swim a lot and now I am looking for a place to swim outside, maybe you can show me some places? ", status: "pending", messenger_id: ru8.id, post_id: p9.id)

puts "Creating shared stories!"

# Shared Stories
s1 = SharedStory.create!(title: "Boat trip in Amsterdam", story: "I met Thomas for a drink at a local cafe in Amsterdam. Then he told me he had a friend who has a boat, so we decided to meet in the weekend for a trip around the canals. It was a beautiful day and we spent all afternoon on the boat. He seems to know Amsterdam better than I do and was a great tour guide! Highlight was that he even pointed out to me where I can fish bicycles out of the canal.", member_id: ru4.id, author_id: du7.id)
s2 = SharedStory.create!(title: "What a nice dinner!", story: "I picked up  our guest cook at his home in Schipluidenlaan. A nice young man was already waiting for us with bags full of food. In the car we started chatting about the weather, but pretty soon, the subject changed to the more serious topics. The whole evening the conversations danced between serious and grave subjects, joyfullness and hope for the future. Abdullah is a really good cook and a very strong and inspiring person. At the end of the evening we said goodbye with the promise to see eachother very soon.", member_id: ru8.id, author_id: du7.id)

puts "Party time!"


