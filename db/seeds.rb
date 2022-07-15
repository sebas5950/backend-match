puts "🌱 Seeding spices..."

Match.delete_all
User.delete_all
Profile.delete_all

puts "Creating default User"

User.create(
    name: "John Smith",
    age: 25,
    gender: "Male",
    sexuality: "Gay",
    info: "I'm a really cool guy.",
    location: "Valhalla",
    image: "https://i.pinimg.com/736x/d6/4c/b3/d64cb334bf6c5e2dae08f6c947757477.jpg"
)

20.times do 
    Profile.create(
        name: Faker::Games::SuperSmashBros.fighter,
        age: Faker::Number.between(from: 18, to: 50),
        gender: ["Male", "Female", "Nonbinary"].sample,
        sexuality: ["Gay", "Straight", "Bisexual"].sample,
        info: Faker::Quote.fortune_cookie,
        location: Faker::Address.city,
        image: Faker::Avatar.image(slug: "my-own-slug", size: "300x300", format: "jpg")
    )
end

# puts "Creating profiles..."
#     Profile.create(
#         id: 1,
#         name: "Mario",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://www.smashbros.com/wii/en_us/characters/images/mario/mario.jpg"
#     )
#     Profile.create(
#         id: 2,
#         name: "Princess Peach",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://ssb.wiki.gallery/images/thumb/7/74/Peach_SSBU.png/1200px-Peach_SSBU.png"
#     )
#     Profile.create(
#         id: 3,
#         name: "Yoshi",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/ssb/images/3/35/Yoshi_-_Super_Smash_Bros._for_Nintendo_3DS_and_Wii_U.png/revision/latest?cb=20150902074334"
#     )
#     Profile.create(
#         id: 4,
#         name: "Link",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/smash_moveset_fanon/images/f/fd/Link.png/revision/latest?cb=20211205204659"
#     )
#     Profile.create(
#         id: 5,
#         name: "Samus",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://www.smashbros.com/wii/en_us/characters/images/samus/samus.jpg"
#     )
#     Profile.create(
#         id: 6 ,   
#     name: "Ganondorf",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/ssb/images/c/cc/Ganondorf_-_Super_Smash_Bros._for_Nintendo_3DS_and_Wii_U.png/revision/latest?cb=20150902075029"
#     )
#     Profile.create(
#         id: 7 ,   
#     name: "Cloud",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://www.smashbros.com/assets_v2/img/fighter/cloud/main.png"
#     )
#     Profile.create(
#         id: 8    ,
#     name: "Rosalina",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/ssb/images/a/ac/Rosalina_%26_Luma_-_Super_Smash_Bros._Ultimate.png/revision/latest?cb=20180612205331"
#     )
#     Profile.create(
#         id: 9,    
#     name: "Kirby",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/ssb/images/9/92/Kirby_-_Super_Smash_Bros._Ultimate.png/revision/latest?cb=20190715072044"
#     )
#     Profile.create(
#         name: "Ike",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/ssb/images/1/17/Ike_-_Super_Smash_Bros._for_Nintendo_3DS_and_Wii_U.png/revision/latest?cb=20150902075725"
#     )
#     Profile.create(
#         name: "Bayonetta",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://www.smashbros.com/assets_v2/img/fighter/bayonetta/main.png"
#     )
#     Profile.create(
#         name: "Wii Fit Trainer",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://ssb.wiki.gallery/images/thumb/f/ff/Wii_Fit_Trainer_SSBU.png/1200px-Wii_Fit_Trainer_SSBU.png"
#     )
#     Profile.create(
#         name: "Wario",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/ssb/images/3/32/Wario_-_Super_Smash_Bros._Ultimate.png/revision/latest?cb=20180612205337"
#     )
#     Profile.create(
#         name: "Lucina",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://static.wikia.nocookie.net/ssb/images/e/eb/Lucina_-_Super_Smash_Bros._Ultimate.png/revision/latest?cb=20180612204957"
#     )
#     Profile.create(
#         name: "Corrin",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://www.smashbros.com/assets_v2/img/fighter/corrin/main2.png"
#     )
#     Profile.create(
#         name: "Sephiroth",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://ssb.wiki.gallery/images/thumb/4/49/Sephiroth_SSBU.png/1200px-Sephiroth_SSBU.png"
#     )
#     Profile.create(
#         name: "Snake",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://i.insider.com/5c13c687ad9571153205f1e3?width=750&format=jpeg&auto=webp"
#     )
#     Profile.create(
#         name: "Kinky Samus",
#         age: Faker::Number.between(from: 18, to: 50),
#         gender: ["Male", "Female", "Nonbinary"].sample,
#         sexuality: ["Gay", "Straight", "Bisexual"].sample,
#         info: Faker::Quote.fortune_cookie,
#         location: Faker::Games::SuperSmashBros.stage,
#         image: "https://www.smashbros.com/assets_v2/img/fighter/zero_suit_samus/main.png"
#     )


puts "Creating matches..."

Match.create(
swipe_user: true,    
swipe_profile: true,
    user_id: 1,
    profile_id: 1
)
Match.create(
    swipe_user: true,      
swipe_profile: false,
    user_id: 1,
    profile_id: 2
)
Match.create(
    swipe_user: true,      
swipe_profile: true,
    user_id: 1,
    profile_id: 3
)
Match.create(
    swipe_profile: false,
    user_id: 1,
    profile_id: 4
)
Match.create(
    swipe_profile: true,
    user_id: 1,
    profile_id: 5
)
Match.create(
    swipe_profile: false,
    user_id: 1,
    profile_id: 6
)
Match.create(
    swipe_profile: true,
    user_id: 1,
    profile_id: 7
)
Match.create(
    swipe_profile: false,
    user_id: 1,
    profile_id: 8
)
Match.create(
    swipe_profile: true,
    user_id: 1,
    profile_id: 9
)
Match.create(
    swipe_profile: false,
    user_id: 1,
    profile_id: 10
)
Match.create(
    swipe_profile: true,
    user_id: 1,
    profile_id: 11
)
Match.create(
    swipe_profile: false,
    user_id: 1,
    profile_id: 12
)


puts "Creating guaranteed match"
    Profile.create(
        name: "Sure Thing",
        age: 69,
        gender: "Nonbinary",
        sexuality: "Straight",
        info: "Definitely",
        location: Faker::Address.city,
        image: Faker::Avatar.image(slug: "my-own-slug", size: "300x300", format: "jpg") 
    )
    Match.create(
        swipe_user: true,
        swipe_profile: true,
        user_id: 1 ,
        profile_id: 21 
    )
puts "Creating guaranteed not match"
    Profile.create(
        name: "Not A Thing",
        age: 0,
        gender: "Nonbinary",
        sexuality: "Bisexual",
        info: "Nope",
        location: Faker::Address.city,
        image: Faker::Avatar.image(slug: "my-own-slug", size: "300x300", format: "jpg") 
    )
    Match.create(
        swipe_user: false,
        swipe_profile: false,
        user_id: 1 ,
        profile_id: 22 
    )

puts "✅ Done seeding!"