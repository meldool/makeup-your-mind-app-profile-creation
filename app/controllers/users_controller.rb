# Reference: http://www.korenlc.com/rails-tutorial-authentication-with-devise/

# Source: https://www.youtube.com/watch?v=Vht9iCw8ApE. Author: Railscasts Reloaded.

class UsersController < ApplicationController

  # This will find the user by ID in the database and display/show it.
  def show
    @user = User.find(params[:id])
  end
  
  def index
   @users = User.all
  end
 # def create
   # @user = User.new(user_params)
    #if @user.save
     # @profile = Profile.create(user_id: @user.id)
      #redirect_to new_user_profile_path(:user_id => @user), :notice => "You have succesfully signed up!"
    #  debugger
  #  else
 #     render "new"
 #   end
end