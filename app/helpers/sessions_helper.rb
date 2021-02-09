module SessionsHelper
    def logout_link
        if !current_user.blank?
            link_to "Logout", logout_path, method: :post
        else
            link_to "Please Log In", new_path
        end
    end
end
