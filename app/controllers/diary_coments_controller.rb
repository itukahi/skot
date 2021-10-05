class DiaryComentsController < ApplicationController
  before_action :set_diary_coment, only: %i[ show edit update destroy ]

  # GET /diary_coments or /diary_coments.json
  def index
    @diary_coments = DiaryComent.all
  end

  # GET /diary_coments/1 or /diary_coments/1.json
  def show
  end

  # GET /diary_coments/new
  def new
    @diary_coment = DiaryComent.new
  end

  # GET /diary_coments/1/edit
  def edit
  end

  # POST /diary_coments or /diary_coments.json
  def create
    @diary_coment = DiaryComent.new(diary_coment_params)

    respond_to do |format|
      if @diary_coment.save
        format.html { redirect_to @diary_coment, notice: "Diary coment was successfully created." }
        format.json { render :show, status: :created, location: @diary_coment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diary_coment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diary_coments/1 or /diary_coments/1.json
  def update
    respond_to do |format|
      if @diary_coment.update(diary_coment_params)
        format.html { redirect_to @diary_coment, notice: "Diary coment was successfully updated." }
        format.json { render :show, status: :ok, location: @diary_coment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diary_coment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diary_coments/1 or /diary_coments/1.json
  def destroy
    @diary_coment.destroy
    respond_to do |format|
      format.html { redirect_to diary_coments_url, notice: "Diary coment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary_coment
      @diary_coment = DiaryComent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diary_coment_params
      params.require(:diary_coment).permit(:user_id, :coments, :diary_id, :time)
    end
end
