# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Teb", last_name: "Demson", username: "oldtab", email: "tag@email.com", password: "password")

User.create(first_name: "Avril", last_name: "Dunleavy", username: "bangarang", email:"bang@rang.edu", password: "123")

User.create(first_name: "Al", last_name: "Musavi", username: "ucancallmeal", email:"bigal@chaitown.com", password: "123")

User.create(first_name: "Nononono", last_name: "?", username: "koala4lyfe", email:"tatertotfreak84@hotmail.com", password: "123")

User.create(first_name: "Sarah", last_name: "Dudek", username: "gumptiongranny4", email: "sarah.marie.dudek@gmail.com", password_digest: "password")

User.create(first_name: "John", last_name: "Doe", username: "johndoe", email: "yycb3xcze3@example.com", password: "password")


Membership.create(group_id: 1, user_id: 1, fee: "$5", paid: true)
Membership.create(group_id: 1, user_id: 2, fee: "$5", paid: true)
Membership.create(group_id: 1, user_id: 3, fee: "$5", paid: true)
Membership.create(group_id: 1, user_id: 4, fee: "$5", paid: true)

Membership.create(group_id: 2, user_id: 1, fee: "$5", paid: true)
Membership.create(group_id: 2, user_id: 2, fee: "$5", paid: true)
Membership.create(group_id: 2, user_id: 3, fee: "$5", paid: true)
Membership.create(group_id: 2, user_id: 4, fee: "$5", paid: true)

Membership.create(group_id: 3, user_id: 3, fee: "$5", paid: true)
Membership.create(group_id: 3, user_id: 4, fee: "$5", paid: true)

Group.create(admin_id: 1, name: "Friend Group")
Group.create(admin_id: 2, name: "Float Crew")
Group.create(admin_id: 3, name: "The Dudes")

