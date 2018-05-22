class CountriesController < ApplicationController
  def index
    @month_id = params[:month_id]
    @countries = Month.find(@month_id).countries
  end
end
