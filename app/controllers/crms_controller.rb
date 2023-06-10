class CrmsController < ApplicationController
    def index
        if !session[:user_id]
            flash[:login_errors] = 'User Not Logged-In. Please Log-In/Register'
            redirect_to '/'
        end
    end
end
