class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :forbid_login_user, {only: [:create,:login]}
  before_action :set_serach_for_workbooks

def set_current_user
  @current_user = User.find_by(id: session[:user_id])
end

def authenticate_user
  if @current_user == nil
    flash[:notice] = "ログインが必要です"
    redirect_to("/login")
  end
end

def forbid_login_user
  if @current_user
    flash[:notice] = "すでにログインしています"
    redirect_to("/users/#{@current_user.id}")
  end
end

def login
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    flash[:notice] = "ログインしました"
    redirect_to("/users/#{@user.id}")
  else
    @error_message = "メールアドレスまたはパスワードが間違っています"
    @email = params[:email]
    @password = params[:password]
    render("users/login_form")
  end
end

def logout
  session[:user_id] = nil
  flash[:notice] = "ログアウトしました"
  redirect_to("/login")
end

  def create
      @user = User.new(
      password: params[:password],
      email: params[:email],
      image_name: "default.png"
    )
      if  @user.save
        session[:user_id] = @user.id
        flash[:notice]="アカウントが作成されました"
        redirect_to("/users/#{@user.id}")
      else
        render("/users/new")
      end
    end

    def set_serach_for_workbooks
      @search_header = Workbook.ransack(params[:q])
    end

end
