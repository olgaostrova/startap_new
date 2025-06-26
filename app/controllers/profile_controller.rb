class ProfileController < ApplicationController
  before_action :set_profile, only: %i[ edit update destroy ]
  load_and_authorize_resource

  # GET /profile or /profile.json

  # GET /profile/1 or /profile/1.json
  def show
    @user = User.find(params[:id])
    @profile = @user.profile
    @posts = @user.posts.order(created_at: :desc)
    @startups = @user.startups.order(created_at: :desc)
  # rescue ActiveRecord::RecordNotFound
  #   redirect_to root_path, alert: "Пользователь не найден"
  end

  # GET /profile/new
  def new
    @profile = Profile.new
  end

  # GET /profile/1/edit
  def edit
  end

  def my
    @user = current_user
    @profile = current_user.profile
    @posts = current_user.posts.order(created_at: :desc)
    @startups = current_user.startups.order(created_at: :desc)
    render :show
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
      params.require(:profile).permit(:user_id, :avatar, :trust_points, :name, :surname, :description, :birthday)
    end

    def set_user
      @user = User.find(params[:id])  # Исправлено params[iid] на params[:id]
    end
end
