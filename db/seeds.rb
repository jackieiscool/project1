# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


countries = Country.create ([
  {title: 'Australia', visited: 'true'},
  {title: 'China', visited: 'true'},
  {title: 'USA', visited: 'true'},
  {title: 'France', visited: 'false'}
])

shane = User.create(:name => 'Shane',  email: "shanemiller500@gmail.com", password: "password", password_confirmation: "password")