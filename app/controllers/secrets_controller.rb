class SecretsController < ApplicationController
    before_action :require_login

    def show
        if session[:name] 

        else
            redirect_to '/sessions/new'
        end
        
    end

    def require_login
        return head(:forbidden) unless session.include? :name
    end
end