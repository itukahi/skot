class DiariesController < ApplicationController
  before_action :set_diary, only: %i[ show edit update destroy ]

  # GET /diaries or /diaries.json
  def index
    @diaries = Diary.all
  end

  # GET /diaries/1 or /diaries/1.json
  def show
    prev_diaries = Diary.joins(:user).where(user: {grade: @diary.user.grade, klass: @diary.user.klass}).where("diaries.time < ?", @diary.time).order("diaries.time": :desc)
    if prev_diaries.present?
      @prev_diary_id = prev_diaries[0]
    else
      @prev_diary_id = nil
    end

    next_diaries = Diary.joins(:user).where(user: {grade: @diary.user.grade, klass: @diary.user.klass}).where("diaries.time  > ?", @diary.time).order("diaries.time")
    if next_diaries.present?
      @next_diary_id = next_diaries[0]
    else
      @next_diary_id = nil
    end
  end

  # GET /diaries/new
  def new
    @diary = Diary.new
    diary_title_id = Diary.where(user_id: current_user.id).pluck(:diarytitle_id)
    @diarytitle = Diarytitle.where("id NOT IN (?)", diary_title_id)
  end

  # GET /diaries/1/edit
  def edit
    @diarytitle = Diarytitle.where("id = ?", @diary.diarytitle_id)
  end

  # POST /diaries or /diaries.json
  def create
    @diary = Diary.new(diary_params)

    respond_to do |format|
      if @diary.save
        format.html { redirect_to @diary, notice: "Diary was successfully created." }
        format.json { render :show, status: :created, location: @diary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaries/1 or /diaries/1.json
  def update
    respond_to do |format|
      if @diary.update(diary_params)
        format.html { redirect_to @diary, notice: "Diary was successfully updated." }
        format.json { render :show, status: :ok, location: @diary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaries/1 or /diaries/1.json
  def destroy
    @diary.destroy
    respond_to do |format|
      format.html { redirect_to diaries_url, notice: "Diary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary
      @diary = Diary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diary_params
      params.require(:diary).permit(:user_id, :diarytitle_id, :contents, :time)
    end
end
