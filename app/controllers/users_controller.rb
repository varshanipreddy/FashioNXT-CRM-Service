class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def create
      user = User.find_by(email:user_params[:email])
      if user
        flash[:login_errors] = 'User already exists. Please Login.'
        redirect_to '/'
      else
        user = User.new(user_params)
        if user.save
          session[:user_id] = user.id
          redirect_to '/dashboard'
        else 
          flash[:danger] = 'Invalid email/password combination' # Not quite right!
          render 'new'
          # flash[:register_errors] = user.errors.full_messages
          # redirect_to '/'
        end
      end
  end

  private 
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

end
