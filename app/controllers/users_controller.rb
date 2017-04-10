# https://www.railstutorial.org/book/basic_login
class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

	def create
		if @user
      if params[:user].present?
              flash[:notice] = "User Already Exists"
      end
    end

		@user = User.new(user_params)
		    if @user.save
            log_in @user
            flash[:success] = "Welcome!!!!"
			         redirect_to items_url
		    else
			         render 'new'
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
