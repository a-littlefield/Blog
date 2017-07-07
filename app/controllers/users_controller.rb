class UsersController < ApplicationController
  def index
    if !session[:user_id]
      redirect_to login_path
    else
      @user = User.find(session[:user_id])
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    redirect_to '/posts'
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
