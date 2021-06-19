class Api::StatesController < ApplicationController
# require 'csv'
# require 'json'
  def csv_to_json
    csv_file_path = 'csv_files/state_data.csv'
    csv = CSV.parse(csv_file_path).to_json

  end
  def index
    @state = csv
    render "index.json.jb"
  end
end
