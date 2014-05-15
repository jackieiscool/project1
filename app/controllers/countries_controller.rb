class CountriesController < ApplicationController
  before_action :load_country, only:[:show, :edit, :destroy]

  # You should remove any methods you are not using.
  def index 
  end

  def new
    @country = Country.new
  end

# creates the place(country) location
  def create
    # This controller method is pretty long. 
    # In the future when you are refactoring you should try and abstract some of this 
    # logic into helper methods.
   @country = Country.new
   @results = Geocoder.search("#{params[:place]}")
   lat = @results[0].data["geometry"]["location"]["lat"]
   long = @results[0].data["geometry"]["location"]["lng"]
   @country.latitude = lat
   @country.longitude = long
   @country.title = params[:place]

# this is where you decide on if you have been to the place you want to pin
    if params[:checkbox]== "on"
      @country.visited = true
    else
       params[:checkbox]== "off"
      @country.visited = false
    end
    @country.save
    redirect_to edit_country_path(@country)
  end

  def show
  end

  def edit
      @country = Country.find(params[:id])
  end

# for the image
  def home
    @pin = Country.last
    @countries = Country.all
    # I would name these variables @bucket_countries and @been_countries
    # If a variable is storing multiple objects it is convention to make it plural.
    @bucket_country = Country.where(visited:false)
    @been_country = Country.where(visited:true)
    @countries = Country.all
    gon.lat = @pin.latitude
    gon.lon = @pin.longitude
    gon.countries = @countries

  end

  def update
    @country = Country.find(params[:id])
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
    params.require(:country).permit(:image)
    
  end

 
end
