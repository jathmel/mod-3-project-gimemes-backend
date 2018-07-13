class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.error, status: :unprocessable_entity
    end
  end

  private
  def set_user
    # byebug
    @user = User.find_by(username: params[:id])
  end

  def user_params
    params.require(:user).permit(:name,:username)
  end
end
