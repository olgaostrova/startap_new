class Api::V1::PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
#    if current_user && current_user.admin?
      @posts = Post.all.sort_by { |post| -post.likes.size }
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
    user = User.find_by_jti(decrypt_payload[0]["jti"])
    post = user.posts.new(post_params)

    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by_jti(decrypt_payload[0][":jti"])
    @post = Post.find(params[:id])

    unless @post.user == user
      return render json: { error: "Unauthorized" }, status: :unauthorized
    end

    @post.destroy
    head :no_content
  end

  def update
    user = User.find_by_jti(decrypt_payload[0][":jti"])
    @post = Post.find(params[:id])

    unless @post.user == user
      return render json: { error: "Unauthorized" }, status: :unauthorized
    end

    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :text, :likes, :startup_id, :user_id, :public, :category_list, :secret, :cover, tag_list: [])
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
