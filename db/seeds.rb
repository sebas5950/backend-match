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
    location: "Chicago, Illinois",
    image: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg")
)

puts "Creating profiles..."

20.times do 
    Profile.create(
        name: Faker::Games::SuperSmashBros.fighter,
        age: Faker::Number.between(from: 18, to: 50),
        gender: ["Male", "Female", "Nonbinary"].sample,
        sexuality: ["Gay", "Straight", "Bisexual"].sample,
        info: Faker::Quote.fortune_cookie,
        location: Faker::Address.city,
        image: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg")
    )
end

puts "Creating matches..."

Match.create(
    swipe_profile: true,
    user_id: 1,
    profile_id: 1
)
Match.create(
    swipe_profile: false,
    user_id: 1,
    profile_id: 2
)

# 10.times do
#     Match.create(
#         swipe_profile: [true, false].sample,
#         user_id: 1, 
#         profile_id: Profile.all.sample.id 
#     )
# end

# 5.times do
#     Match.create(
#         swipe_user: [true, false].sample,
#         user_id: 1, 
#         profile_id: Profile.all.sample.id 
#     )
# end

puts "Creating guaranteed match"
    Profile.create(
        name: "Sure Thing",
        age: 69,
        gender: "Nonbinary",
        sexuality: "Straight",
        info: "Definitely",
        location: Faker::Address.city,
        image: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg") 
    )
    Match.create(
        swipe_user: true,
        swipe_profile: true,
        user_id: 1 ,
        profile_id: 21 
    )

puts "✅ Done seeding!"
