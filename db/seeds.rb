# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
ActiveRecord::Base.transaction do
Course.destroy_all

history = Course.create(name: "History", release_date: "2021-12-06")
math = Course.create(name: "Math", release_date: "2021-12-06")
ruby = Course.create(name: "Ruby", release_date: "1995-01-01")
end
