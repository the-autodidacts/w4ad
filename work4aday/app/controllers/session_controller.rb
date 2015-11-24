class SessionController < ApplicationController
  def create
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      session[:current_user_id] = user.id
      flash[:message] = "Thanks for logging in " + user.first_name.capitalize +
      " "+user.last_name.capitalize[0]+ "."
      redirect_to session_path #in root path for now
    else
      flash[:message] = "Username or Password combo are not correct"
      redirect_to root_path
    end

  end

  def destroy
    session[:current_user_id] = nil
    render json: {
      message: "session destroyed"
    }
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end
end
