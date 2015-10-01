class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
    @user_session = UserSession.new
  end

  def create
    if login(params[:email],params[:password])
      redirect_back_or_to(root_path, notice: "ログインしました")
    else
      flash[:alert] = "メールアドレスまたはパスワードが違います"
      redirect_to root_path
    end
  end

  def destroy
    logout
    redirect_to(login_path, notice: "ログアウトしました")
  end
end
