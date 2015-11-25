class StaticController < ApplicationController
  def welcome
    render '/static/welcome'
  end

  def index
    redirect_to root_path unless session[:current_user_id]
  end

end
