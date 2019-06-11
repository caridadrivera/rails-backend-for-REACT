# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(username: "cari@aol.com", password:"123")
User.create(username: "ca@aol.com", password:"123")
User.create(username: "ri@aol.com", password:"123")

# Friendship.create()
Post.create(user_id: 1, content:"love this place", image_url: "https://tat.imgix.net/attachments/global/1406756136_original.jpeg?w=640&h=480&fit=crop&crop=entropy&auto=format,enhance&q=60", title:"when in Italy")
Post.create(user_id: 1, content:"love this place", image_url: "https://tat.imgix.net/attachments/global/1406756136_original.jpeg?w=640&h=480&fit=crop&crop=entropy&auto=format,enhance&q=60", title:"when in Italy")
