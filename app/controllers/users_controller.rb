class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def sign_in
    if @user
      token = encode_token({ user_id: @user.id })
      render json: { user: token, name: @user.name }
    else
      render json: { error: @user.errors.full_messages[0] }
    end
    
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token({ user_id: @user.id })
      render json: { user: token, name: @user.name }
    else
      render json: { error: @user.errors.full_messages[0] }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by('username = ?', params[:username])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username)
    end
end
