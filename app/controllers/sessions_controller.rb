class SessionsController < ApplicationController
  skip_before_action :logged_in_user
  #ログイン画面表示（ログイン状態であればログアウトしておく）
  def new
    log_out
  end

  #ログイン処理
  def create
    user = User.find_by(account: params[:session][:account].downcase)
    if user && user.password == params[:session][:password]
      log_in user
      redirect_to root_path
    else
      flash[:danger] = "ログインに失敗しました！"
      render 'new'
    end
  end

  #ログアウト処理
  def destroy
    log_out
    redirect_to root_path
  end

end