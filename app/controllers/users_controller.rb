class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
    end

  def create
    @user = User.new(user_params)
#localhost:3000/users?user[name]=name&user[email]=email
    if @user.save
      render json: @user
    else
      render(
        json: @user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)

    if @user.save
      render json: @user
    else
      render(
      json: @user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    User.destroy(params[:id])
    render json: @user

  end

  private
    def user_params
      params.require(:user).permit(:username)
    end
end
