class CommentsController < ApplicationController
  def index
    
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.create(comment_params)
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

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :content)
  end
end
