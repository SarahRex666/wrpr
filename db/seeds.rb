# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all
Recipient.destroy_all
Gift.destroy_all

user1 = User.create(username: "A", password: "password", email: "test@test.com", first_name: "A", last_name: "a")

recipient1 = Recipient.create(name: "B", relationship: "Friend", priority: 0, user_id: user1.id)

gift1 = Gift.create(name: "Gift", description: "A Gift", photo_url: "google.com", bought: false, made: false, priority: 5, wrapped: false, price: 15, user_id: user1.id, recipient_id: recipient1.id)
