class UsersController < ApplicationController
  before_action :set_post, only: [:edit,:show,:admin,:update,:destroy]
  
  def home
  end
  
  def index
     @user = User.all
     #render json: @user, each_serializer: UserSerializer
  end
  def show 
  end
  
  def admin
    if @user.admin?
      @user.update(admin: false)
      redirect_to users_path
    else
      @user.update(admin: true)
      redirect_to users_path
    end
  end

  def destroy
    @user.destroy
      respond_to do |format|
      format.html { redirect_to users_path, success: 'User was successfully destroyed.' }
      format.json { head :no_content }
      end  
  end


  private
    def set_post
      @user = User.find(params[:id])
    end
    def user_params
    params.require(:user).permit(:email)
  end
end
