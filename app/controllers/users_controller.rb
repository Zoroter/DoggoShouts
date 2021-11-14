class UsersController < ApplicationController
    skip_before_action :user_username?, only: [:edit, :update]

    def show
        @user = current_user
    end

    def edit
        @user = current_user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to root_path
    end

    private
        def user_params
            params.require(:user).permit(:username)
        end
  
end