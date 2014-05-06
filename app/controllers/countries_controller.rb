class CountriesController < ApplicationController
  before_action :load_country, only:[:show, :edit, :destroy, :update]

  def new
    @country = Country.new
  end

  def create
    new_country = params.require(:country).permit(:title, :latitude, :longitude)
    countries = Country.create(new_country)
     @user = User.create( user_params )
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def home
    @pin = Country.last
    @countries = Country.all
   
    gon.lat = @pin.latitude
    gon.lon = @pin.longitude
  end

  def update
      @country.update_attributes country_params
    reidirect_to root_path
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

end

