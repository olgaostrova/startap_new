class Admin::StartupsController < ApplicationController
  before_action :set_startup, only: %i[ edit update destroy ]
  load_and_authorize_resource

  # GET /startups or /startups.json
 
  # GET /startups/new
  def new
    @startup = Startup.new
  end

  # GET /startups/1/edit
  def edit
  end

  # POST /startups or /startups.json
  def create
    @startup = Startup.new(startup_params)

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
      params.require(:startup).permit(:name, :tag_list, :description, :user_id)
    end
end
