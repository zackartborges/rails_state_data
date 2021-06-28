class Api::StatesController < ApplicationController
require 'csv'
# require 'json'

  def index
@state = State.all
render "index.json.jb"

  end

  def show
    @input = params[:id]
    @state = State.find_by(code: @input)
    render "show.json.jb"
  end
  
end
