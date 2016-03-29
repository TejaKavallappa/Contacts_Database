# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  # u1 = User.create!(name: "Zach", email: "z@gmail.com")
  # u2 = User.create!(name: "Teja", email: "t@gmail.com")
  # u3 = User.create!(name: "Gizmo", email: "g@gmali.com")
u1= User.create!(username: "firstuser")
end
