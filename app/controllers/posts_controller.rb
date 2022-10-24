class PostsController < ApplicationController
  def index
    @posts = Post.where(author_id: params[:user_id])
  end

  def show
    set_post
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
