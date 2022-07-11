Film.destroy_all
Review.destroy_all
User.destroy_all

puts "🌱 Seeding spices..."



# Seed your database here

puts "Creating films..."

puts "Creating users..."

puts "Creating reviews..."

User.create(name: "Alex")
User.create(name: "Victor")
User.create(name: "Nick")

# Film.create(
# title: "Marcel the Shell with Shoes on",
# year: 2021,
# runtime: 89,
# rotten_tomatoes_score: 99,
# director: "Dean Fleischer-Camp",
# starring: "Jenny Slate, Rosa Salazar, Thomas Mann, Isabella Rossellini",
# synopsis: "Marcel is an adorable, 1-inch-tall shell who ekes out a colorful existence with his grandmother, Connie.",
# critics_consensus: "Poignant, profound, and utterly heartwarming, Marcel the Shell with Shoes On is animated entertainment with real heart.",
# image_url: "https://m.media-amazon.com/images/M/MV5BNTQ4ZmMxMzItNGQ0Yi00YTU5LTg1MTctM2ZkNTkzNGU0MDhlXkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_.jpg"
#)

puts "✅ Done seeding!"
