class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    if params[:name] && params[:name].length > 0
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end
end
