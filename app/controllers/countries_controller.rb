class CountriesController < ApplicationController
# before_action :load_country, only: [:index]

  def index
    @month_id = params[:month_id]
    @countries = Month.find(@month_id).countries
  end

  # def load_country
  #   @country = Country.find_by(month_id: params[:id])
  # end
end
