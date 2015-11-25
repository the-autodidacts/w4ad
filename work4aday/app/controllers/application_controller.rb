class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def welcome
    render '/static/welcome'
  end

  def index
    render '/static/index'
  end
end
