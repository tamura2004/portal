class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:user_session][:email],params[:user_session][:password])
      redirect_back_or_to(:users, notice: "ログインしました")
    else
      flash.now[:alert] = "メールアドレスまたはパスワードが違います"
      render action: "new"
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: "ログアウトしました")
  end
end
