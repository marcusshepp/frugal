# https://www.railstutorial.org/book/basic_login
class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

  def destroy
    current_user.destroy
    redirect_to login_path
  end

	def create
      if params[:user].present?
              flash[:notice] = "User Already Exists"
      end
		@user = User.new(user_params)
		    if @user.save
            log_in @user
            flash[:success] = "Welcome!!!!"
            flash.discard(:notice)
			         redirect_to items_url
		    else
			         redirect_to :back
		    end

  end

    def update
    end

	private

	def user_params
		params.require(
			:user).permit(
			:username,
			:email,
			:password,
			:password_confirmation)
	end

end
