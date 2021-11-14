class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :user_username?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username])
    end
   
    def user_username?
        if current_user != nil
            if current_user.username == nil
                redirect_to edit_user_path(current_user)
            end
        end
    end

end
