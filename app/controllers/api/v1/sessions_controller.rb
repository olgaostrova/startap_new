class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token, only: [:create, :destroy]
  skip_before_action :verify_signed_out_user, only: [:destroy]
  before_action :sign_in_params, only: :create  
  before_action :load_user, only: :create

  def create
    # sign_in "user", @user
  
    if @user.valid_password?(sign_in_params[:password])
      render json: {
        messages: "Signed In Successfully",
        is_success: true,
        jti: @user.jti,
        status: :ok
      }
    else
      render json: {
        messages: "Signed In Failed - Unauthorized",
        is_success: false,
        data: {}
      }, status: :unauthorized
    end
  end

def destroy
  @user = User.find_by_jti(params['jti'])

  if @user && @user.update_column(:jti, SecureRandom.uuid)
    render json: {
      messages: "Signed Out Successfully",
      is_success: true,
      data: {},
    }, status: :ok
  else
    render json: {
      messages: "Signed Out Failed - Unauthorized",
      is_success: false,
      data: {},
    }, status: :unauthorized
  end
end

  private

    def sign_in_params
      params.require(:user).permit(:email, :password)
    end

    def load_user
      @user = User.find_for_database_authentication(email: sign_in_params[:email])
      puts "USER"
      puts @user.to_json
      

      if @user
        return @user
        puts "yes"
        puts @user.email
      else
        render json: {
        messages: "Cannot get User",
        is_success: false,
        data: {}
        }, status: 404

        puts "no"
        puts @user.email
      end
    end
  end