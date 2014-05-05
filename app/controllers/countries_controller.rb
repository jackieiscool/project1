class CountriesController < ApplicationController

def new
  @country = Country.new
end

def create
  new_country = params.require(:country).permit(:title, :latitude, :longitude)

  countries = Country.create(new_country)

  redirect_to root_path


end

def show
  @country = Country.find(params [:all])
end

def edit
  @countries = Country.find(params [:id])
end

def home
    @pin = Country.last
    @countries = Country.all
   
    gon.lat = @pin.latitude
    gon.lon = @pin.longitude
  end

  def destroy
    @countries.destroy
    redirect_to root_path
  end


 
end

