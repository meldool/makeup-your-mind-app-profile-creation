class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @search = Profile.search(params[:q])
    @profiles = @search.result(distinct: true)
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
  
  def destroy
    @profile.destroy
    
    respond_to do |format|
      format.html { redirect_to profile_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    
    def set_profile
      @profile = Profile.find(params[:id])
      #@profile = Profile.find(profile_params)
    end
    
    def profile_params
      params[:profile][:user_id] = current_user.id
      params.require(:profile).permit(:full_name, :contact_number, :location, :makeup_type, :bio, :user_id, :image)
    end
      
end