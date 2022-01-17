class StudmarksController < ApplicationController
  before_action :set_studmark, only: %i[ show edit update destroy ]
  before_action :admin_loggedin?
  after_action :update_log, only: :destroy
  # GET /studmarks or /studmarks.json
  def index
    @studmarks = Studmark.all
  end

  # GET /studmarks/1 or /studmarks/1.json
  def show
  end

  # GET /studmarks/new
  def new
    @studmark = Studmark.new
  end

  # GET /studmarks/1/edit
  def edit
  end

  # POST /studmarks or /studmarks.json
  def create
    @studmark = Studmark.new(studmark_params)

    respond_to do |format|
      if @studmark.save
        AdminMailer.alert_admin(@studmark).deliver
        format.html { redirect_to studmark_url(@studmark), notice: "Studmark was successfully created." }
        format.json { render :show, status: :created, location: @studmark }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studmarks/1 or /studmarks/1.json
  def update
    respond_to do |format|
      if @studmark.update(studmark_params)
        format.html { redirect_to studmark_url(@studmark), notice: "Studmark was successfully updated." }
        format.json { render :show, status: :ok, location: @studmark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studmarks/1 or /studmarks/1.json
  def destroy
    @studmark.destroy

    respond_to do |format|
      format.html { redirect_to studmarks_url, notice: "Studmark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studmark
      @studmark = Studmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studmark_params
      params.require(:studmark).permit(:firstname, :lastname, :mark1, :mark2, :mark3, :total)
    end
end
