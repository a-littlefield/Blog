class SessionsController < ApplicationController
	def new
	end

  def create
  	user = User.find_by_email(params[:email]) 
  	if user && user.password == params[:password] 
  		session[:user_id] = user.id 
  		redirect_to root_path, :notice => "Welcome back, #{user.first_name}"
  	else 
  		redirect_to login_path, :alert => 'Incorrect email or password'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end
end
