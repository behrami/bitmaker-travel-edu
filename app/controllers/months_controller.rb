class MonthsController < ApplicationController
  def index
    @months = Month.all

    if params[:search]
      @results = {}
      @results["Country"]= Country.where('name ILIKE ?',"%#{params[:search][:query]}%")
      @results["City"] = City.where('name ILIKE ?',"%#{params[:search][:query]}%")
      @results["Hotel"]= Hotel.where('name ILIKE ?',"%#{params[:search][:query]}%")
    end

  end
end
