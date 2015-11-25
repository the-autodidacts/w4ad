class JobpostingsController < ApplicationController
  def create
    if session[:current_user_id]
      current_user  = User.find(session[:current_user_id])
      jobposting   = current_user.jobpostings.new(jobposting_params)

      if jobposting.save
        render json: jobposting
      else
        render json: {
          error: true,
          message: jobposting.errors.full_messages.to_sentence
        }
      end
    else
      redirect_to root_path
    end
  end


  def destroy

  end


  private
  def jobposting_params
    params.require(:jobposting).permit(:location, :latitude, :longitude, :title, :description, :start_date, :start_time, :length, :rate_of_pay, :expires)
  end
end
