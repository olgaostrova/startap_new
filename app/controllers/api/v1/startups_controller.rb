class Api::V1::StartupsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
#    if current_user && current_user.admin?
      @startups = Startup.all
      #render json: @startups.as_json
#    elsif current_user
#      @startups = Startup.where(public: true)
#      render json: @startups.as_json
#    end
  end

  def show
    @startup = Startup.find(params[:id])
  end

  def create
    puts 'decrypt_payload'
    puts decrypt_payload

    user = User.find_by_jti(decrypt_payload[0]["jti"])
    startup = user.startups.new(startup_params)

    if startup.save
      render json: startup, status: :created
    else
      render json: startup.errors, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by_jti(decrypt_payload[0][":jti"])
    @startup = Startup.find(params[:id])

    unless @startup.user == user
      return render json: { error: "Unauthorized" }, status: :unauthorized
    end

    @startup.destroy
    head :no_content
  end

  def update
    user = User.find_by_jti(decrypt_payload[0][":jti"])
    @startup = Startup.find(params[:id])

    unless @startup.user == user
      return render json: { error: "Unauthorized" }, status: :unauthorized
    end

    if @startup.update(startup_params)
      render json: @startup
    else
      render json: @startup.errors, status: :unprocessable_entity
    end
  end

  private

    def startup_params
      params.require(:startup).permit(:name, :description, :user_id, tag_list: [])
    end

    def encrypt_payload
      payload = @user.as_json(only: [:email, :jti])
      token = JWT.encode(payload, Rails.application.credentials.devise_jwt_secret_key!, 'HS256')
    end

    def decrypt_payload
      jwt = request.headers["Authorization"]
      token = JWT.decode(jwt, Rails.application.credentials.devise_jwt_secret_key!, true, { algorithm: 'HS256' })
    end


end
