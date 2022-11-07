# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

verbs = ['Adding', 'Creating', 'Craving', 'Harvesting', 'Making'
  'Picking', 'Generating']

adjectives = ['new', 'some', 'fresh', 'delicious', 'hazardous', 'amazing',
  'incredible', 'magic', 'special', 'spatial', 'orthopedic', 'shiny', 'tasty']

def message(word)
  "#{verbs.sample} #{adjectives.sample} #{word}"
end