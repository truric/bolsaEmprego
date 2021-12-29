class EntitiesController < ApplicationController
  load_and_authorize_resource

  before_action :set_entity, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /entities or /entities.json
  def index
    @entities = Entity.all.paginate(page: params[:page], per_page: 3)

    # Search bar
    if params[:search]
      @search_term = params[:search]
      @entities = @entities.search_by(@search_term)
    end

  end

  # GET /entities/1 or /entities/1.json
  def show
    @job_offers = JobOffer.all
  end

  # GET /entities/new
  def new
    @user = User.new
    @entity = Entity.new
    redirect_to entities_path
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities or /entities.json
  def create
    @entity = Entity.new(entity_params)
    @entity.image.attach(params[:entity][:image])

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

  def correct_user
  #   @entity = current_user.entity.find_by(id: params[:id])
    if current_user.role != "entity" || current_user.role != "backoffice" || current_user.entity.id != this.entity.id
      redirect_to entities_path, notice: "Not authorized to Edit this Entity" if @entity.nil?
    end
  #   redirect_to entities_path, notice: "Not authorized to Edit this Entity" if @entity.nil?
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
