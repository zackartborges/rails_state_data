class Api::StatesController < ApplicationController
require 'csv'
# require 'json'

  def index
    @states = []
    CSV.foreach(Rails.root.join('lib/state_data.csv'), skip_lines: /^#/, headers: true) do |row|
    state = {
      state: row[0],
      median_household_income: row[1],
      share_unemployed_seasonal: row[2],
      share_population_in_metro_areas: row[3],
      share_population_with_high_school_degree: row[4]
    }
    @states << state
  end
  render json: @states
  end
end
