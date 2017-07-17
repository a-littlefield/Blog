class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to posts_path
  end

  def edit
  end

  def show
    if !session[:user_id]
      redirect_to login_path
    else
      @user = current_user
      @posts = @user.posts.order(created_at: :desc)
    end
  end

  def update
  end

  def destroy
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar)
  end

end
