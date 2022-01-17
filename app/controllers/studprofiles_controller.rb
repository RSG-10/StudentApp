class StudprofilesController < ApplicationController
  before_action :set_studprofile, only: %i[ show edit update destroy ]
  before_action :admin_loggedin?
  after_action :update_log, only: :destroy
  # GET /studprofiles or /studprofiles.json
  def index
    @studprofiles = Studprofile.all
  end

  # GET /studprofiles/1 or /studprofiles/1.json
  def show
  end

  # GET /studprofiles/new
  def new
    @studprofile = Studprofile.new
  end

  # GET /studprofiles/1/edit
  def edit
  end

  # POST /studprofiles or /studprofiles.json
  def create
    @studprofile = Studprofile.new(studprofile_params)
    p "Student Profile....."
    studmark_id=@studprofile.studmark_id
    p studmark_id
    @findbyid = Studprofile.find_by_studmark_id(studmark_id)
    p "find by Id******************"
    p @findbyid


    respond_to do |format|
      if  @findbyid == nil
      if @studprofile.save
        format.html { redirect_to studprofile_url(@studprofile), notice: "Studprofile was successfully created." }
        format.json { render :show, status: :created, location: @studprofile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studprofile.errors, status: :unprocessable_entity }
      end
      else
        p "***********Already This Id ONE TO ONE ******"
        flash[:notice] = 'Studprofile has only one Studmark record already present'
        format.html { render :new, notice: "Studprofile has only one Studmark record already present" }
        format.json { render :new, location: @studprofile }
      end
    end
  end

  # PATCH/PUT /studprofiles/1 or /studprofiles/1.json
  def update
    respond_to do |format|
      if @studprofile.update(studprofile_params)
        format.html { redirect_to studprofile_url(@studprofile), notice: "Studprofile was successfully updated." }
        format.json { render :show, status: :ok, location: @studprofile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studprofiles/1 or /studprofiles/1.json
  def destroy
    @studprofile.destroy

    respond_to do |format|
      format.html { redirect_to studprofiles_url, notice: "Studprofile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studprofile
      @studprofile = Studprofile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studprofile_params
      params.require(:studprofile).permit(:age, :email, :address, :mobilenumber, :image, :studmark_id)
    end
end
