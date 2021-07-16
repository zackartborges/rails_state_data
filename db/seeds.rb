# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# state = State.create([{name: "Texas", median_household_income: "392", share_unemployed_seasonal: "22", share_population_in_metro_areas: "2222", share_population_with_high_school_degree: "98"}])
# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'abbreviations.csv'))

# puts csv_text
index = 1
CSV.foreach("lib/abbreviations.csv") do |row|
#  need to bypass first row for the rows to match
# first row is titles, need to bypass first row and match State.find(index)
  # p row[0]
  if row[0] == State.find(index)["state"]
    p row[1]
    p State.find(index)["state"]
    p "-------"
    @state = State.find(index)
    @state.code = row[2]
    @state.save
    index += 1
  else
    p "next"
  end

  # p State.find(index)["state"]
  # index = index + 1
  # p "----------"


end 