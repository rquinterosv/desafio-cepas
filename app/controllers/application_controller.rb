class ApplicationController < ActionController::Base
    def authorize_editor!
        unless current_user.editor?
            flash[:alert]= 'You must be an editor to access this section'
            redirect_to_root_path
        end
    end
end
