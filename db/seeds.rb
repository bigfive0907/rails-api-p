# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 5.times do |n|
#   User.create!(
#     email: "test#{n + 1}@test.com",
#     encrypted_password: "test#{n + 1}test",
#   )
# end

# User.all.each do |user|
#   user.tweets.create!(
#     body: 'テキストテキストテキストテキスト'
#   )
# end

# 4.times do |n|
#   Favorite.create!(
#     user_id: n + 1,
#     tweet_id: n + 1
#   )
# end

4.times do |n|
  Relationship.create!(
    follower_id: n + 1,
    following_id: 5-n
  )
end