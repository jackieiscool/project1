class CountriesController < ApplicationController
  before_action :load_country, only:[:show, :edit, :destroy]

  def index
    # get city
    # use geocoder to find lat and long
    # save lat and long to new Country object
    
    # @country = Country.new


    # @country.latitude =
    # @country.longitude =
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new
    @results = Geocoder.search("#{params[:place]}")
    lat = @results[0].data["geometry"]["location"]["lat"]
    long = @results[0].data["geometry"]["location"]["lng"]
    @country.latitude = lat
    @country.longitude = long
    @country.title = params[:place]
    @country.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def home

    # @results = Geocoder.search("McCarren Park, Brooklyn, NY")
    # @results[0].data["geometry"]["location"]["lat"]

    @pin = Country.last
    @countries = Country.all
    @country = Country.find(61)
    gon.lat = @pin.latitude
    gon.lon = @pin.longitude
    gon.countries = @countries

  end

  def update
    @country = Country.find(params[:id])
    binding.pry
    @country.update country_params
    redirect_to root_path
  end

  def destroy
    @country.destroy 
    redirect_to root_path
  end

private
  def load_country
    @country = Country.find(params[:id])
    redirect_to root_path unless @country
  end

  def country_params
    params.require(:country).permit(:image_file_name)
    
  end

 
end

