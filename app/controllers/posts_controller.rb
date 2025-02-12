class PostsController < ApplicationController
  load_and_authorize_resource
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    if current_user && current_user.admin?
      @posts = Post.all.limit(30)
    else 
      @posts = Post.where(public: true).limit(30)
    end

    #@posts = Post.paginate(page: params[:page], per_page: 30)

  end

  def edit
    @posts = Post.find(params[:id])
  end


  
  def my
    if current_user
     @posts = current_user.posts
    end
   end

  def show
    #@posts = Post.find(params[:id])
  end

  def by_tag
    @posts = Post.tagged_with(params[:tag]).where(public: true)
    render :index
  end

  
  # POST /posts or /posts.json
  def create
    @post = current_user.posts.new(post_params)

    respond_to do |format|
      if @post.save
        if current_user.posts.count == 1
          UserMailer.with(user: current_user).welcome_email.deliver_now
        end
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_path, status: :see_other, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end
  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :text, :likes, :startup_id, :public, :category_list, :secret, :cover, tag_list: [])
  end

end