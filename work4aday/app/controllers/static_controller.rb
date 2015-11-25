class StaticController < ApplicationController
  def welcome
    render '/static/welcome'
  end

  def index
    render '/static/index'
  end

end
