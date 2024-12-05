class Api::V1::PostsController < ApplicationController

  def index
#    if current_user && current_user.admin?
      @posts = Post.all
      #render json: @posts.as_json
#    elsif current_user
#      @posts = Post.where(public: true)
#      render json: @posts.as_json
#    end
  end

  def show
    @post = Post.find(params[:id])
  end

end
