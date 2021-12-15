# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  before_action :configure_permitted_parameters, if: :devise_controller?


  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.

  protected

  def configure_permitted_parameters
      # In case you want to permit additional parameters (the lazy way™), you can do so using a simple before action in your ApplicationController:
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

  def user_params
      params.require(:user).permit(:email, :password, entity: [:name, :description, :industry, :address, :county, :phone, :fax, :website])
  end
end
