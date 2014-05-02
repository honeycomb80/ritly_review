# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Url.create(link: 'https://www.google.com', random_string: 'goog1')
Url.create(link: 'http://www.yahoo.com', random_string: 'yahoooooo')
Url.create(link: 'http://arstechnica.com/', random_string: 'ars')
