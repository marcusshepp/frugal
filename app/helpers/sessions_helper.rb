module SessionsHelper

    # logs in the giving user
    def log_in(user)
        session[:user_id] = user.id
    end

    # returns the current logged-in user (if any)
    def current_user
       @current_user ||= User.find_by(id: session[:user_id])
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
