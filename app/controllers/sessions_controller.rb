class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new

  end

  def create
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      session[:user_admin]=user.admin
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Oops! user name and/or password entered incorrectly"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_index_url, notice: "Successfully logged out.  Come back soon."
  end
end