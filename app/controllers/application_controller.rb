class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        # In case you want to permit additional parameters (the lazy way™), you can do so using a simple before action in your ApplicationController:
        devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    end

    def user_params
        params.permit(:email, :password, entities_attributes: [:id, :name, :description, :industry, :address, :phone, :fax, :website])
    end

end
