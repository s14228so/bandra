class UsersController < ApplicationController
   before_action :authenticate_user!, only: [:update,:edit]
  def show
  	@user = User.find(params[:id])
    @ivents = @user.ivents
  end
  def index
  	@users = User.all
  end
  def photos
    @photo = Photo.new
    @user = User.find(params[:id])
  end


  def create
     @user = User.create(user_params)
  end
  def edit
      @user = User.find(params[:id])
   if !(@user == current_user)
      redirect_to root_path, notice:"他人のプロフィールページは編集できません"
   end
  end
  def icons
       @icon = Icon.new
    @user = User.find(params[:id])
    if !(@user == current_user)
      redirect_to root_path , notice:"他人のプロフィールページは編集できません"
    end
end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)

      redirect_to user_path(current_user), notice: "ユーザー情報を更新しました"
  end
end


private
def user_params
  params.require(:user).permit(:profile,:user_age,:bandor,:basyo, :gender, :nickname, icon: params[:icon])
  end
end