class JobpostingsController < ApplicationController
  def create
    if session[:current_user_id]
      current_user  = User.find(session[:current_user_id])
      job_posting   = current_user.jobpostings.new(jobposting_params)
      fail
    else
      redirect_to root_path
  end

  def destroy

  end


  private
  def jobposting_params
    params.require(:jobposting).permit(:location, :latitude, :longitude, :title, :description, :start_date, :start_time, :length, :rate_of_pay, :expires)
  end
end
