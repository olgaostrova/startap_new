class ApplicationController < ActionController::Base

  #allow_browser versions: :modern

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to root_path, alert: exception.message }
    end
  end

  def authenticate_guest
    if current_user
      if cookies[:guest_token]
        puts cookies[:guest_token] == current_user.jti
      else
        cookies[:guest_token] = current_user.jti
      end
    end
  end

end
