class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]

    def new
    end

    def create
        if session[:name]
            redirect_to '/'
        elsif params[:name].blank? || params[:name].nil?
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
