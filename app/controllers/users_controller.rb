class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  # def create
  #     @user = User.new(user_params)
  #   if @user.valid?
  #     @user.save
  #     session[:user_id] = @user.id
  #     redirect_to user_path(@user)
  #   else
  #     flash[:error] = @user.errors.full_messages
  #     redirect_to new_user_path
  #   end
  # end
  def create
    @user = User.new()
    @user.attributes = user_params
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def update
    current_user.shoes << Shoe.find(params[:shoe_id])

    redirect_to user_path(current_user)
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end
end
