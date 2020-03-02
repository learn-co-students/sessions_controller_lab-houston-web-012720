class SessionsController < ApplicationController
  def new
    # nothing to do here!

  end

  def create
      if !params[:name] || params[:name].empty?
        redirect_to login_path
      else
        session[:name] = params[:name]
        redirect_to root_path
      end
  end

  def destroy
    session.delete :name
  end
end