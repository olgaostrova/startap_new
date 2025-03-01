class Api::V1::PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

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

  def create
    jti = request.headers["Authorization"]
    user = User.find_by_jti(jti)
    post = user.posts.new(post_params)

    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :text)
    end

end
