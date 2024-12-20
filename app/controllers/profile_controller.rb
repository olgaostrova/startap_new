class ProfileController < ApplicationController
  before_action :set_profile, only: %i[ edit update destroy ]
  load_and_authorize_resource

  # GET /profile or /profile.json

  # GET /profile/1 or /profile/1.json
  def show
    @profile = Profile.first
  end

  # GET /profile/new
  def new
    @profile = Profile.new
  end

  # GET /profile/1/edit
  def edit
  end

  # POST /profile or /profile.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile/1 or /profile/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile/1 or /profile/1.json
  def destroy
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profile_path, status: :see_other, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:user_id, :avatar, :trust_points, :name, :surname, :descrtiption, :birthday)
    end
end
