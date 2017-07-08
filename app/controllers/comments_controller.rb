class CommentsController < ApplicationController
  def index
    
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to @comment.post
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
