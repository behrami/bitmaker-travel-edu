class CitiesController < ApplicationController
  def index
    @country_id = params[:country_id]
    @cities = Country.find(@country_id).cities
  end
end
