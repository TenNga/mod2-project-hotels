class ApplicationController < ActionController::Base

    def user 
        if session[:user]
            user = Guest.find(session[:user])
        end
    end

    def valid?
        redirect_to new_session_path unless user
    end

end
