class Api::V1::WelcomeController < ApplicationController

  def index
    @posts = Post.last(10)
    @comments = Comment.last(10)
  end

end
