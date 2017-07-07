class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).last(10)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(params[:post])
    redirect_to posts_path

  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
