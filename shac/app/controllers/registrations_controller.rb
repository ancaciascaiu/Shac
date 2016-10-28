class RegistrationsController < Devise::RegistrationsController
   private
 
    # Modified Devise params for user login
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
 
    def after_sign_up_path_for(host)
      # return :crashings
      :crashings_path
    end
 
    def after_inactive_sign_up_path_for(host)
      "/crashings"
    end
end