class CountriesController < ApplicationController
  def index
    @month_id = params[:month_id]
    @countries = Month.find(@month_id).countries

    @countries_info=[]
    @countries.each do |country|
      country_response = HTTParty.get("https://restcountries.eu/rest/v2/name/#{country.name.gsub(' ', '%20')}")
      country_body = JSON.parse(country_response.body)

      @hash = {}
      @hash[:alpha2Code] = country_body[0]['alpha2Code']
      @hash[:capital] = country_body[0]['capital']
      @hash[:population] = country_body[0]['population']
      @hash[:currency] = country_body[0]['currencies'][0]['name']
      @hash[:languages] = []

      country_body[0]['languages'].each do |lang|
        @hash[:languages] << lang['name']
      end

      @hash[:flag] = country_body[0]['flag']

      @countries_info << @hash
    end


  end
end
