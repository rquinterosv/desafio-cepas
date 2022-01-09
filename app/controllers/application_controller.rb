class ApplicationController < ActionController::Base
    def authorize_editor!
        unless current_user.editor?
            flash[:alert]= 'You must be an editor to access this section'
            redirect_to_root_path
        end
    end
    def authorize_writer!
        unless current_user.writer?
            flash[:alert]= 'You must be a writer to access this section'
            redirect_to_root_path
        end
    end
    def authorize_reviewer!
        unless current_user.reviewer?
            flash[:alert]= 'You must be a reviewer to access this section'
            redirect_to_root_path
        end
    end
end
