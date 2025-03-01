class Api::V1::ProfileController < ApplicationController


  def show
    user = User.find_by_jti(decrypt_payload[0]["jti"])
    profile = user.profile
  end

end
