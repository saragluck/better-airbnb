class UsersController < ApplicationController
  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.image = params[:user][:image]
    @user.save
    redirect_to "/users"
  end

  def new
    @user = User.new
    render template: "users/new"
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
