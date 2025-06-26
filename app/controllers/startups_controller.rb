class StartupsController < ApplicationController
  before_action :set_startup, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /startups or /startups.json
 
  #GET /startups/new
  def new
    @startup = Startup.new
  end

  def index
    if current_user && current_user.admin?
      @startups = Startup.all
    elsif current_user
      @startups = Startup.where(public: true)
    end
  end

  def edit
    @startups = Startup.find(params[:id])
  end


  
  def my
    if current_user
     @startups = current_user.startups
    end
   end

  def show
    #@startups = Startup.find(params[:id])
    @posts = @startup.posts
  end

  def by_tag
    @startups = Startup.tagged_with(params[:tag])
    render :index
  end

  # POST /startups or /startups.json
  def create    
    @startup = current_user.startups.new(startup_params)

    respond_to do |format|
      if @startup.save
        format.html { redirect_to startup_url(@startup), notice: "Startup was successfully created." }
        format.json { render :show, status: :created, location: @startup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startups/1 or /startups/1.json
  def update
    respond_to do |format|
      if @startup.update(startup_params)
        format.html { redirect_to startup_url(@startup), notice: "Startup was successfully updated." }
        format.json { render :show, status: :ok, location: @startup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1 or /startups/1.json
  def destroy
    @startup.destroy

    respond_to do |format|
      format.html { redirect_to startups_path, status: :see_other, notice: "Startup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def startup_params
      params.require(:startup).permit(:name, :description, :about, :avatar, :user_id, tag_list: [])
    end

    #  def index
#    def index
#      if current_user && current_user.admin?
#        @startups = Startup.all 
#      elsif current_user 
#        @startups = Startup.where(public: true)
#      end
#    end
#  end
#   
#  def my
#    if current_user
#     @startups = current_user.startups
#    end
#   end

#   # GET /startups/1 or /startups/1.json
#   def show
#    @startup = Startup.find(params[:id])
#   end



end