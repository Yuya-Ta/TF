class UsersController < ApplicationController
before_action :authenticate_user, {only: [:edit, :update,:scoreedit,:scoreupdate]}
before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}
before_action :ensure_correct_user, {only: [:edit, :update]}
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
    @score_r=Score.where(user_id: params[:id]).order(month:"asc").pluck(:month,:points_r)
    @score_l=Score.where(user_id: params[:id]).order(month:"asc").pluck(:month,:points_l)
    @score_sum=Score.where(user_id: params[:id]).order(month:"asc").pluck(:month,:points_sum)
    @user_posts=Post.where(user_id: params[:id]).order(start_date: "asc")
    @user_posts_2=@user_posts.pluck(:start_date,:finish_date)
    @i=0
    @user_posts_2.each do |ary|
      @i += 1
      ary.unshift(@i.to_s)
    end
    @accordionid=0
  end

  def scoreedit
    @score = Score.new
    @score_count=Score.where(user_id: @current_user.id).count
  end

  def scoreupdate
      @score = Score.new(
      points_r: params[:points_r],
      points_l: params[:points_l],
      points_sum: params[:points_r]+params[:points_l],
      month: params[:month]+"-01",
      user_id: @current_user.id
    )

      if params[:continue] && @score.save
        redirect_to("/users/scoreedit")
      elsif @score.save
        flash[:notice] = "スコア情報を編集しました"
        redirect_to("/users/#{@score.user_id}")
      else
        render("users/scoreedit")
      end
  end


  def login_form
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/")
    end
  end



  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.email = params[:email]
    @user.name = params[:name]
    @user.gender = params[:gender]
    @user.age = params[:age]
    @user.profession = params[:profession]
    @user.start_date = params[:start_date]
    @user.profile = params[:profile]

  if params[:image]
    @user.image_name = "#{@user.id}.jpg"
    image = params[:image]
    File.binwrite("public/user_images/#{@user.image_name}", image.read)
  end

  if @user.save
    flash[:notice] = "ユーザー情報を編集しました"
    redirect_to("/users/#{@user.id}")
  else
    render("users/edit")
  end
  end

end
