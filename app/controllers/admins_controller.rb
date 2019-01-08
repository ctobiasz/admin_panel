class AdminsController < ApplicationController
  def new
    @admin = Admin.new
    if logged_in?
      redirect_to root_path
    else
      render 'new'
    end

end

  def create
    @admin = Admin.new(admin_params)
    if @admin.valid?
      @admin.save
      redirect_to @admin
    else
      p @admin.errors.messages
      render 'new'
    end
  end

  def index
    @admin = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    @admin.update(admin_params)
    redirect_to admin_path
  end

  private

  def admin_params
  params.require(:admin).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
