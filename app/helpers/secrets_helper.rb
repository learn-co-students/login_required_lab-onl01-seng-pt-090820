module SecretsHelper
    def welcome_with_secret_link
        if !current_user.blank?
            "Welcome, #{current_user}."
            link_to "A Secret for you", secrets_path
        end
    end
end
