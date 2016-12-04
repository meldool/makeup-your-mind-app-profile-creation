class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update, :destroy]

  # Ransack Searh - passes in parameters entered by user into Profile object which is assigned to @search instance varialble.
  def index
    @search = Profile.search(params[:q])
    @search.sorts = 'full_name asc' if @search.sorts.empty?
    @profiles = @search.result
  end
  
  def show
    @profile = Profile.find(params[:id])
  end
  
# Creates a new blank Profile page for the Member to fill in.
  def new
    @profile = Profile.new  
  end
  
  def create
   @profile = Profile.new(profile_params)
  
   respond_to do |format|
     if @profile.save
       format.html { redirect_to @profile, notice: 'Your Profile was successfully created' }
       format.json { render :show, status: :created, location: @profile }
     else
       format.html { render :new }
       format.json { render json: @profile.errors, status: :unprocessable_entry }
     end
    end   
  end
  
  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  
  private

    def set_profile
      @profile = Profile.find(params[:id])
    end
    
    def profile_params
    # By specifying the profiles user_id together with the profile, it is creating a link with the actual user.
      params[:profile][:user_id] = current_user.id
      params.require(:profile).permit(:full_name, :contact_number, :location, :makeup_type, :bio, :user_id, :image)
    end
      
end