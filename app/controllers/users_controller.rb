class UsersController < ApplicationController
  def index
    @user = User.all
    render template: "users/index"
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.image = params[:user][:image]
    @user.save
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/rooms"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @user = User.new
    render template: "users/new"
  end

  def edit
    @user = User.find_by(id: params[:id])
    render template: "users/edit"
    @user.save
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.price = params[:user][:price]
    @user.description = params[:user][:description]
    @user.save
    redirect_to "/rooms"
  end

  def destroy
    @user = user.find_by(id: params[:id])
    @user.destroy
    redirect_to "/rooms", status: :see_other
  end
end
