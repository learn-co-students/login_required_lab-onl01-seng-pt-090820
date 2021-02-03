class SessionsController < ApplicationController
    # skip_before_action :verify_authenticity_token

    def new

    end

    def create
        # byebug
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