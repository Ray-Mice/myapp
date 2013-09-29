class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to @user  # After submit with valid information, direct to user index page
      flash[:success] = "Welcome to the 'My' Application!"
    else
      render 'new'
    end
  end

  private   #params Hash includes :user parameter，futhermore only name、email、password & password_confirmation are permitted

    def user_params   
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
