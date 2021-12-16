# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    # super
    @user = User.new

    if params[:role] == "entity"
      @user.role = "entity"
      entity = @user.entities.build
    else
      @user.role = "candidate"
      candidate = @user.candidates.build
    end
  end

  # POST /resource
  def create
    super
    byebug
    if params[:role] == "entity"
      @user.role = "entity"
      @entity = Entity.new(params[:entity])
      @entity.user_id = current_user.id
      # @user = entity.current_user.build(user_params)
      # @entity.user = current_user
      # @entity.save
    # else
    #   @user = candidate.current_user.build(user_params)
    #   @candidate.user = current_user
    #   @candidate.save

      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: "User was successfully created." }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end

  def user_params
    params.require(:user).permit(:email, :password, entities_attributes: [:id, :name, :description, :industry, :address, :county, :phone, :fax, :website, :user_id])
  end
  
end
