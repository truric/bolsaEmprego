class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
        # devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id, :name, :description, :industry, :address, :county, :phone, :fax, :website])
    end
end
