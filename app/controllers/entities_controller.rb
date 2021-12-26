class EntitiesController < ApplicationController
  before_action :set_entity, only: [:show, :edit, :update, :destroy ]
  # before_action :authenticate_user!, except: [:index, :show]
  # before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /entities or /entities.json
  def index
    @entities = Entity.all
  end

  # GET /entities/1 or /entities/1.json
  def show
    @job_offers = JobOffer.all
  end

  # GET /entities/new
  def new
    # @new_user = User.last.id+1
    # @entity = @new_user.entities.build
    @user = User.new
    @entity = Entity.new
    # @entity.users.new
    # @entity = @user.entities.build
    # @entity = Entity.new(entity_params.merge(users: current_user))
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities or /entities.json
  def create
    # @entity = Entity.new(params[:entity])
    # @entity.user = @new_user

    # @entity = Entity.new(entity_params)
    

    
    @entity = Entity.new(entity_params)
    # @user.save
    # debugger
    # @entity.user_id = @user.id
    @entity.save

    
      # # This will save the user in db with fields for devise
      # sign_in @user
      # # :bypass is set to ignore devise related callbacks and only save the
      # # user into session.
      # sign_in @user, :bypass => true 

    # @entity = user.entities.build(entity_params)
    
    # @entity.user = @user.id

    respond_to do |format|
      if @entity.save
        format.html { redirect_to entity_url(@entity), notice: "Entity was successfully created." }
        format.json { render :show, status: :created, location: @entity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entities/1 or /entities/1.json
  def update
    respond_to do |format|
      if @entity.update(entity_params) && @entity.user.update(user_params)
        format.html { redirect_to entity_url(@entity), notice: "Entity was successfully updated." }
        format.json { render :show, status: :ok, location: @entity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1 or /entities/1.json
  def destroy
    @entity.destroy

    respond_to do |format|
      format.html { redirect_to entities_url, notice: "Entity was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entity_params
      params.require(:user).require(:entity).permit(:id, :name, :description, :industry, :address, :county, :phone, :fax, :website, :postal_code, :location, :tax_number, :user_id)
    end

    def user_params
      params.require(:user).permit(:id, :email, :password, :role)
    end
end
