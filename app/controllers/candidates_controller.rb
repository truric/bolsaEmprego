class CandidatesController < ApplicationController
  load_and_authorize_resource

  before_action :set_candidate, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user!, except: [:index, :show, :edit]

  # GET /candidates or /candidates.json
  def index
    @candidates = Candidate.paginate(page: params[:page], per_page: 3)

    # Search bar
    if params[:search]
      @search_term = params[:search]
      @candidates = @candidates.search_by(@search_term)
    end
  end

  # GET /candidates/1 or /candidates/1.json
  def show
  end

  # GET /candidates/new
  def new
    @user = User.new
    @candidate = Candidate.new
  end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates or /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.save
    
    respond_to do |format|
      if @candidate.save
        format.html { redirect_to candidate_url(@candidate), notice: "Candidate was successfully created." }
        # format.html { redirect_to @candidate, notice: "Candidate was successfully created." }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidates/1 or /candidates/1.json
  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: "Candidate was successfully updated." }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidates/1 or /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: "Candidate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
        @candidate = Candidate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def candidate_params
      params.require(:user).require(:candidate).permit(:name, :description, :industry, :employed, :grade, :qualification, :experience, :address, :phone, :fax, :website, :user_id, :postal_code, :location, :id_card, :dob, :image, :attachment, :active)
    end

    def user_params
      params.require(:user).permit(:id, :email, :password, :role)
    end
end
