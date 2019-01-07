class SessionsController < ApplicationController
  def new
  end

  def create
    user = Admin.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])

      log_in user
      redirect_to user
    else
       flash[:danger] = 'Invalid email/password combination'
       render 'new'
    end
  end

  def delete
  end

end