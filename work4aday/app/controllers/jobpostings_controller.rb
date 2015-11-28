class JobpostingsController < ApplicationController
  before_action :require_current_user
  # skip_before_action :verify_authenticity_token

  def index
    @jobpostings = jobposting.all
  end

  def new
  end

  def create
      @jobposting   = current_user.jobpostings.new(jobposting_params)
      if @jobposting.save

      else
        render json: {
          message: "Error"
          }
      end
  end

  def edit
  end

  def update
  end

  def destroy

  end

  def index
    @jobpostings = Jobposting.all
end

  private
  def jobposting_params
    params.require(:jobposting).permit(:location, :latitude, :longitude, :title, :description, :start_date, :start_time, :length, :rate_of_pay, :expires)
  end
end
