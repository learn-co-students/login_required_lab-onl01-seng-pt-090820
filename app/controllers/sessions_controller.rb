class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name].empty?
            redirect_to '/sessions/new'
        else
            session[:name] = params[:name]
            
            redirect_to show_path
        end
    end

    def destroy
        if !session[:name].nil?
            session.delete :name

            redirect_to '/sessions/new'
        end
    end

end