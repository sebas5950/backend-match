puts "🌱 Seeding spices..."

Match.delete_all
User.delete_all
Profile.delete_all

puts "Creating default instances..."

User.create(
    name: "John Smith",
    age: 25,
    gender: "Male",
    sexuality: "Gay",
    info: "I'm a really cool guy.",
    location: "Chicago, Illinois",
    image: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg")
)

puts "Creating users..."

10.times do
    User.create(
        name: Faker::Name.name,
        age: Faker::Number.between(from: 18, to: 50),
        gender: ["Male", "Female", "Nonbinary"].sample,
        sexuality: ["Gay", "Straight", "Bisexual"].sample,
        info: Faker::Quote.fortune_cookie,
        location: Faker::Address.city,
        image: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg")
    )
end

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

40.times do
    Match.create(
        swipe_user: [true, false].sample,
        swipe_profile: [true, false].sample,
        user_id: User.all.sample.id, 
        profile_id: Profile.all.sample.id 
    )
end

puts "✅ Done seeding!"
