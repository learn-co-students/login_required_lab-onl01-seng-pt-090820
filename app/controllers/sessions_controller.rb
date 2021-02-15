class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]

    def new
    end

    def create
        if params[:name].blank?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def hello
    end

    def destroy
        session.delete :name
    end

end
