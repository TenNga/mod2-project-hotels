class SessionsController < ApplicationController
  before_action :valid?, except: [:index,:new, :create]
  
  def index
    
  end

  def new
  end

  def create
    user = Guest.find_by(email: params[:email])
    if (user && user.authenticate(params[:password]))
      session[:user] = user.id 
      redirect_to home_pages_path
    else
      flash[:message] = "Username Or Password Incorrect!!"
      redirect_to new_session_path
    end
  end

  def logout
    session[:user] = nil 
    redirect_to new_session_path
  end
end
