class SessionsController < ApplicationController
  def new
    redirect_to root_path if current_user
  end

  def create
    @user = User.find_by('lower(email) = ?', params[:email].downcase)
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = 'Logged in Sucessfully'
      redirect_to root_path
    else
      respond_to do |format|
        format.html do
          flash[:error] = 'Incorrect email address or password'
          render 'new'
        end

        format.json do
          render status: :forbidden, json: { error: 'Incorrect email address or password' }
        end
      end
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil

    flash[:notice] = 'Logged Out!'
    redirect_to login_path
  end
end