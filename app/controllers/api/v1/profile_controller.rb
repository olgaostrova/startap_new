class Api::V1::ProfileController < ApplicationController


  def show
    user = User.find_by_jti(decrypt_payload[0]["jti"])
    profile = user.profile
  end

end

private


def profile_params
  params.require(:profile).permit(:name, :surname, :description, :avatar, :trust_points, :birthday)
end

def encrypt_payload
  payload = @user.as_json(only: [:email, :jti])
  token = JWT.encode(payload, Rails.application.credentials.devise_jwt_secret_key!, 'HS256')
end

def decrypt_payload
  jwt = request.headers["Authorization"]
  token = JWT.decode(jwt, Rails.application.credentials.devise_jwt_secret_key!, true, { algorithm: 'HS256' })
end

