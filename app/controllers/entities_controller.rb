class EntitiesController < ApplicationController
  before_action :set_entity, only: [:show, :edit, :update, :destroy ]
  # before_action :authenticate_user!, except: [:index, :show]
  # before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /entities or /entities.json
  def index
    @entities = Entity.all.paginate(page: params[:page], per_page: 3)
  end

  # GET /entities/1 or /entities/1.json
  def show
    @job_offers = JobOffer.all
  end

  # GET /entities/new
  def new
    @user = User.new
    @entity = Entity.new
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities or /entities.json
  def create
    @entity = Entity.new(entity_params)
    @entity.save

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
      params.require(:user).require(:entity).permit(:id, :name, :description, :industry, :address, :county, :phone, :fax, :website, :postal_code, :location, :tax_number, :user_id, :active)
    end

    def user_params
      params.require(:user).permit(:id, :email, :password, :role)
    end
end
