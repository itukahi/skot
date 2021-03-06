module SessionsHelper
    #渡されたユーザーをセッション変数に保存する
    def log_in(user)
        session[:user_id] = user.id
    end

    #現在ログイン中のユーザー情報を返す（ユーザーがいる場合）
    def current_user
        if session[:user_id]
            if session[:i_am_teacher]
              @current_user ||= Teacher.find_by(id: session[:user_id])
            else
              @current_user ||= User.find_by(id: session[:user_id])
            end
        end
    end

    #ユーザーがログインしていればture、その他ならfalseを返す
    def logged_in?
        !current_user.nil?
    end

    #現在のユーザーをログアウトする
    def log_out
        session.delete(:user_id)
        session.delete(:i_am_teacher)
        @current_user = nil
    end

end
