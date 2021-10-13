class SessionsController < ApplicationController
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
end