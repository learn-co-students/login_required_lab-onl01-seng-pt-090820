class SecretsController < ApplicationController
    before_action :login_required
    
    def show
    end

    def login_required
        redirect_to new_path unless current_user
    end
end
