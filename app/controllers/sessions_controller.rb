class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to items_path
    else
        flash[:danger] = "Invalid Email and/or Password"
        render 'new'
    end
   end

  def destroy
      log_out
      redirect_to login_path
  end
end
