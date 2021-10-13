class DiarytitlesController < ApplicationController
  before_action :set_diarytitle, only: %i[ show edit update destroy ]

  # GET /diarytitles or /diarytitles.json
  def index
    @diarytitles = Diarytitle.all
  end

  # GET /diarytitles/1 or /diarytitles/1.json
  def show
  end

  # GET /diarytitles/new
  def new
    @diarytitle = Diarytitle.new
  end

  # GET /diarytitles/1/edit
  def edit
  end

  # POST /diarytitles or /diarytitles.json
  def create
    @diarytitle = Diarytitle.new(diarytitle_params)

    respond_to do |format|
      if @diarytitle.save
        format.html { redirect_to @diarytitle, notice: "Diarytitle was successfully created." }
        format.json { render :show, status: :created, location: @diarytitle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diarytitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diarytitles/1 or /diarytitles/1.json
  def update
    respond_to do |format|
      if @diarytitle.update(diarytitle_params)
        format.html { redirect_to @diarytitle, notice: "Diarytitle was successfully updated." }
        format.json { render :show, status: :ok, location: @diarytitle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diarytitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diarytitles/1 or /diarytitles/1.json
  def destroy
    @diarytitle.destroy
    respond_to do |format|
      format.html { redirect_to diarytitles_url, notice: "Diarytitle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diarytitle
      @diarytitle = Diarytitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diarytitle_params
      params.require(:diarytitle).permit(:title)
    end
end
