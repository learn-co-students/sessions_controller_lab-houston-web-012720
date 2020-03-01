class SessionsController < ApplicationController
  def new
  end

  
  def create
    session[:name] =  params[:name]
    if session[:name] && !(session[:name] == "")
      redirect_to '/'
    elsif  session[:name] == "" 
      redirect_to '/sessions/new'
    else 
      redirect_to '/sessions/new'
    end 
  end 
  
  def destroy
    session.delete :name
    redirect_to login_path
  end 
end