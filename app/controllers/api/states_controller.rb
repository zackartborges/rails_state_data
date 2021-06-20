class Api::StatesController < ApplicationController
require 'csv'
# require 'json'

  def index
@state = State.all
render "index.json.jb"
  end

  def show

  end
end
