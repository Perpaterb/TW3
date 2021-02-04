class ApplicationController < ActionController::Base
    def admin_only
        unless current_user.admin
            redirect_to home_path, notice: 
        "You must be an admin to     perform that function!"
        end
    end
end