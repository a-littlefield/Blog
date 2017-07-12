class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).limit(50)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to posts_path

  end

  def edit
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :content)
  end
end
