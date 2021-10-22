class SessionsTeacherController < ApplicationController
  skip_before_action :logged_in_user
  #ログイン画面表示（ログイン状態であればログアウトしておく）
  def new
    log_out
  end

  #ログイン処理
  def create
    teacher = Teacher.find_by(account: params[:session_teacher][:account].downcase)
    if teacher && teacher.password == params[:session_teacher][:password]
      log_in teacher
      session[:i_am_teacher] = true
      redirect_to root_path
    else
      flash[:danger] = "ログインに失敗しました！"
      render 'new'
    end
  end

end
