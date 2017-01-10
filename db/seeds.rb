# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeds.rb

class Movie < ActiveRecord::Base
end

require 'csv'

f = "#{Rails.root}/db/csv/movies.csv"

raise "#{f} does not exist. Stoping import of movies" if !File.exists?(f)

CSV.foreach(f, :headers => true) do |row|
  # puts row.inspect
  m=row.to_hash
  puts m.inspect
  Movie.create!(m)
end

