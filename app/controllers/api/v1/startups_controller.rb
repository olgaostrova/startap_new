class Api::V1::StartupsController < ApplicationController

  def index
#    if current_user && current_user.admin?
      @startups = Startup.all
      #render json: @posts.as_json
#    elsif current_user
#      @posts = Post.where(public: true)
#      render json: @posts.as_json
#    end
  end

  def show
    @startups = Startup.find(params[:id])
  end

end
