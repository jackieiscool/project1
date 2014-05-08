class CountriesController < ApplicationController
  before_action :load_country, only:[:show, :edit, :destroy]

  def index
   
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

  def home
    @pin = Country.last
    @countries = Country.all
    @bucket_country = Country.where(visited:false)
    @been_country = Country.where(visited:true)
    @country = Country.find_by(params[:id])
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

