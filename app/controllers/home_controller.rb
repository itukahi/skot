class HomeController < ApplicationController
  def top
  end

  def write_or_show
  end

  def search_grade_class
  end

  def clicked
    @gakunen = params[:gakunen]
    @kumi = params[:kumi]
    diaries = Diary.joins(:user).where(user: {grade: @gakunen, klass: @kumi}).order(time: :desc)

    if diaries.present?
      redirect_to diary_path(diaries[0])
    else
      redirect_to home_search_grade_class_path
    end
  end

end