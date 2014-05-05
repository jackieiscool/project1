class CountriesController < ApplicationController

def new
  @country = Country.new
end

def create
  new_country = params.require(:country).permit(:title, :visited, :latitude, :longitude)
  country = Country.create(new_country)
  #alert ("You have just saved")
  redirect_to root_path
end

def show
  @country = Country.find(params [:id])
end

def edit
  @countries = Country.find(params [:id])
end


 
end

