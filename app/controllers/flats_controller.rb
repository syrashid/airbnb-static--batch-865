# Finally the last bit we do is to refactor our code, we can do this with confidence because of our tests
# In this refactor we use something called a filter to apply some shared logic that takes place before multiple actions, this helps keep our code nice and DRY
# We also moved the URL into a constant so that it is accessible everywhere and in every action

require 'open-uri'

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def set_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end

