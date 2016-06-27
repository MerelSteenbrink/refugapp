# The data below can be loaded with the rake db:seed (or created alongside the db with db:setup).

User.destroy_all
SharedStory.destroy_all
Post.destroy_all
Request.destroy_all
ChatMessage.destroy_all


# Users with kind = 'refugee'
ru1 = User.create!(username: "Ricky", first_name: "Ricardo", last_name: "Del Mar", kind: "refugee", city: "Hoofddorp", email: "raindance@gmail.com", password: "password", password_confirmation: "password")
ru2 = User.create!(username: "Zohra", first_name: "Zohra", last_name: "Tannous", kind: "refugee", city: "Roosendaal", email: "z.tannous@gmail.com", password: "password", password_confirmation: "password")
ru3 = User.create!(username: "BennyM", first_name: "Ben", last_name: "Marsischky", kind: "refugee", city: "Amsterdam", email: "bbm@live.com", password: "password", password_confirmation: "password")
ru4 = User.create!(username: "Tuds", first_name: "Thomas", last_name: "Wilkinson", kind: "refugee", city: "Amsterdam", email: "tuds@gmail.com", password: "password", password_confirmation: "password")
ru5 = User.create!(username: "Amena01", first_name: "Amena", last_name: "Nour", kind: "refugee", city: "Den Haag", email: "amena01@gmail.com", password: "password", password_confirmation: "password")
ru6 = User.create!(username: "batman", first_name: "Tarek", last_name: "Nour", kind: "refugee", city: "Den Haag", email: "t.nour@hotmail.com", password: "password", password_confirmation: "password")
ru7= User.create!(username: "EssaKhattan", first_name: "Essa", last_name: "Khattan", kind: "refugee", city: "Utrecht", email: "essa_k@gmail.com", password: "password", password_confirmation: "password")


# Users with kind = 'dutchie'
du1 = User.create!(username: "Bastiaan22", first_name: "Bastiaan", last_name: "Overwater", kind: "dutchie", city: "Hoofddorp", email: "bas_de-beste@gmail.com", password: "password", password_confirmation: "password")
du2 = User.create!(username: "Sooph", first_name: "Sophia", last_name: "De Jong", kind: "dutchie", city: "Utrecht", email: "sooph_87@gmail.com", password: "password", password_confirmation: "password")
du3 = User.create!(username: "Miri", first_name: "Miriam", last_name: "De Vries", kind: "dutchie", city: "Amsterdam", email: "mdevries@gmail.com", password: "password", password_confirmation: "password")
du4 = User.create!(username: "Luukie", first_name: "Luuk", last_name: "Bakker", kind: "dutchie", city: "Rotterdam", email: "luukie@gmail.com", password: "password", password_confirmation: "password")
du5 = User.create!(username: "Noor", first_name: "Eleonore", last_name: "Van Den Helder", kind: "dutchie", city: "Schiedam", email: "new_noor@gmail.com", password: "password", password_confirmation: "password")
du6 = User.create!(username: "Stijn", first_name: "Stijn", last_name: "Janssen", kind: "dutchie", city: "Almere", email: "stijn_jj@gmail.com", password: "password", password_confirmation: "password")
du7 = User.create!(username: "fleur_zozo", first_name: "Fleur", last_name: "Bieman", kind: "dutchie", city: "Amsterdam", email: "f.bieman@gmail.com", password: "password", password_confirmation: "password")


# Posts
p1 = Post.create!(subject: "Biking to Zaandam", content: "There are really nice windmills near Zaamdam. Let's take our bikes, explore the windmills and have lunch somewhere nearby during one of the upcoming weekends! Who is in?", author_id: du1.id, postal_code: "1505 CL", city: "Zaandam", category: "social")
sleep 0.2
p2 = Post.create!(subject: "Origami", content: "Is there anyone who knows a bit of origami? I started learning how to make some birds and really want to learn more! ", author_id: ru4.id, postal_code: "1066 VH", city: "Amsterdam", category: "skills")
sleep 0.2
p3 = Post.create!(subject: "Learn Dutch", content: "I have been taking Dutch classes and would love to practice with a native speaker. Zullen we koffie drinken?", author_id: ru5.id, postal_code: "2518 BK", city: "Den Haag", category: "language")
sleep 0.2
p4 = Post.create!(subject: "Gezellig samen eten", content: "I would like to meet for dinner and hear your stories! I will make a typical Dutch meal ('hutspot' or something similar) and would really like to try some traditional meals from other places as well. Let me know if you are interested!", author_id: du2.id, postal_code: "3551 LH", city: "Utrecht", category: "social")
sleep 0.2
p5 = Post.create!(subject: "Speak Dutch", content: "If anyone would like to practice some Dutch with me in exchange for learning some Arabic, let's meet!", author_id: du3.id, postal_code: "1018 DM", city: "Amsterdam", category: "language")
sleep 0.2
p6 = Post.create!(subject: "Code with me!", content: "I am learning how to code websites, and to practice a bit more I would be happy to do a little workshop to teach a bit of code and build something nice together. Any ideas for websites are welcome, and you don't need to know much about code to join.", author_id: ru6.id, postal_code: "2518 AX", city: "Den Haag", category: "skills")
sleep 0.2
p7 = Post.create!(subject: "Photography", content: "I would like to learn more about photography. I would like to make nice photos of landscapes and places around here to send back home and show my family how it is here. Does someone want to share with me some photography tricks?", author_id: ru3.id, postal_code: "1071 GK", city: "Amsterdam", category: "skills")
sleep 0.2
p8 = Post.create!(subject: "Make a meal with tofu", content: "I am vegetarian and like cooking. I have been trying to make something nice with tofu but it does not taste that great. Does anyone have nice recipes and wants to cook something together? ", author_id: ru2.id, postal_code: "4705 RA", city: "Roosendaal", category: "social")


# Requests
r1 = Request.create!(message: "I think that sounds like fun! Where are you biking from?", status: "pending", messenger_id: ru1.id, post_id: p1.id)
r2 = Request.create!(message: "I took a course on making origami vegetables. Let's meet up and I can show you. When are you available?", status: "pending", messenger_id: du7.id, post_id: p2.id)
r3 = Request.create!(message: "That sounds great! Where are you from? I live in Utrecht as well and I know a very nice cafe to go to. Can you meet sometime in the weekend?", status: "pending", messenger_id: du2.id, post_id: p3.id)
r4 = Request.create!(message: "I am very interested! Can you also show me how you make these Dutch meals? I can cook with you and show you some of my homecooked recipes too.", status: "pending", messenger_id: ru2.id, post_id: p4.id)
r5 = Request.create!(message: "Let's meet! I am learning Dutch and can tell you some Arabic too.", status: "pending", messenger_id: ru5.id, post_id: p5.id)
r6 = Request.create!(message: "Building websites sounds awesome! I have been doing some online courses and would really like to meet you. Are you organizing an event for many people or do you want to meet one on one?", status: "pending", messenger_id: du5.id, post_id: p6.id)
r7 = Request.create!(message: "Photography is one of my biggest hobbies! Let's meet and I can show you some tricks I have learned! Do you have time to meet next weekend?", status: "pending", messenger_id: du3.id, post_id: p7.id)
r8 = Request.create!(message: "I have a recipe with soyasaus and tofuy which is pretty nice. Do you want to meet sometime and cook together?", status: "pending", messenger_id: du6.id, post_id: p8.id)


# Shared Stories
s1 = SharedStory.create!(title: "Boat trip in Amsterdam", story: "I met Thomas for a drink at a local cafe in Amsterdam. Then he told me he had a friend who has a boat, so we decided to meet in the weekend for a trip around the canals. It was a beautiful day and we spent all afternoon on the boat. He seems to know Amsterdam better than I do and was a great tour guide! Highlight was that he even pointed out to me where I can fish bicycles out of the canal.", member_id: ru4.id, author_id: du7.id)


