class User::SessionsController < User::BaseController

  def new
    if current_user
      redirect_to :user_root
    else
      @form = User::LoginForm.new
      render action: "new"
    end
  end

  def create
    @form = User::LoginForm.new(params[:user_login_form])
    if @form.email.present?
      user = User.find_by(email_for_index: @form.email.downcase)
    end
    if User::Authenticator.new(user).authenticate(@form.password)
      session[:user_id] = user.id
      flash["success"] = "ログインしました"
      redirect_to :user_root
    else
      flash.now["danger"] = "メールアドレスまたはパスワードが正しくありません"
      render action: "new"
    end
  end

  def destroy
    session.delete(:user_id)
    flash["success"] = "ログアウトしました"
    redirect_to :user_root
  end

  # private
  # def user_params
  #   params.require(:user).permit(
  #     :email, :password, :family_name, :given_name,
  #     :family_name_kana, :given_name_kana,
  #     :group_id
  #   )
  # end
end
