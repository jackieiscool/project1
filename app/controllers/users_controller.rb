class UsersController < ApplicationController

  def index
    @users = User.all 
  end

  def show
    @user = User.find(param[:id])
  end


  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end


  # get '/movie/:imdbID' do

  # res=Typhoeus.get("www.omdbapi.com/", 
  #   :params => { :i => params["imdbID"] })
  # @pic = JSON.parse(res.body)
  
end
