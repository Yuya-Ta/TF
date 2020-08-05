class WorkbooksController < ApplicationController
  before_action :authenticate_user, {only: [:post_create, :post]}
  def template
  end

  def post
    @workbook = Workbook.find_by(id: params[:workbook_id])
  end

  def post_create
    @post=Post.new(
      good_content: params[:good_content],
      bad_content: params[:bad_content],
      user_id: @current_user.id,
      workbook_id: params[:workbook_id],
      satisfaction: params[:satisfaction],
      detail: params[:detail],
      volume: params[:volume],
      ease: params[:ease],
      difficulty: params[:difficulty],
      period: params[:period],
      points: params[:points],
      counts: params[:counts],
      start_date: params[:start_date],
      finish_date: params[:finish_date]
    )
    if @post.save
      flash[:notice] = "口コミを投稿しましたご協力ありがとうございました。"
      redirect_to("/workbooks/#{@post.workbook_id}")
    else
      render("/workbooks/post")
    end
  end

  def show
    @workbook = Workbook.find_by(id: params[:workbook_id])
    @post=Post.where(workbook_id: params[:workbook_id])
    #期間で
    @period1=@post.where(period: 1)
    @period2=@post.where(period: 2)
    @period3=@post.where(period: 3)
    @period4=@post.where(period: 4)
    @period5=@post.where(period: 5)
    #点数わけです。
    @post195=Post.where(workbook_id: params[:workbook_id]).where("points <= ?" ,195)
    @post200295=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,295,200)
    @post300395=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,395,300)
    @post400495=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,495,400)
    @post500595=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,595,500)
    @post600695=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,695,600)
    @post700795=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,795,700)
    @post800895=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,895,800)
    @post900990=Post.where(workbook_id: params[:workbook_id]).where("points <= ? and points >= ?" ,990,900)
    #満足度
    if @post.count==0
      @satisfaction=0
    end
    if @post.count>=1
      @satisfaction=@post.sum(:satisfaction).to_f/@post.count.to_f
      @detail=@post.sum(:detail).to_f/@post.count.to_f
      @difficulty=@post.sum(:difficulty).to_f/@post.count.to_f
      @ease=@post.sum(:ease).to_f/@post.count.to_f
      @volume=@post.sum(:volume).to_f/@post.count.to_f
    end
    if  @post195.count>=1
      @satisfaction195=@post195.sum(:satisfaction).to_f/@post195.count.to_f
      @detail195=@post195.sum(:detail).to_f/@post195.count.to_f
      @difficulty195=@post195.sum(:difficulty).to_f/@post195.count.to_f
      @ease195=@post195.sum(:ease).to_f/@post195.count.to_f
      @volume195=@post195.sum(:volume).to_f/@post195.count.to_f
    end
    if @post200295.count>=1
      @satisfaction200295=@post200295.sum(:satisfaction).to_f/@post200295.count.to_f
      @detail200295=@post200295.sum(:detail).to_f/@post200295.count.to_f
      @difficulty200295=@post200295.sum(:difficulty).to_f/@post200295.count.to_f
      @ease200295=@post200295.sum(:ease).to_f/@post200295.count.to_f
      @volume200295=@post200295.sum(:volume).to_f/@post200295.count.to_f
    end
    if @post300395.count>=1
      @satisfaction300395=@post300395.sum(:satisfaction).to_f/@post300395.count.to_f
      @detail300395=@post300395.sum(:detail).to_f/@post300395.count.to_f
      @difficulty300395=@post300395.sum(:difficulty).to_f/@post300395.count.to_f
      @ease300395=@post300395.sum(:ease).to_f/@post300395.count.to_f
      @volume300395=@post300395.sum(:volume).to_f/@post300395.count.to_f
    end
    if @post400495.count>=1
      @satisfaction400495=@post400495.sum(:satisfaction).to_f/@post400495.count.to_f
      @detail400495=@post400495.sum(:detail).to_f/@post400495.count.to_f
      @difficulty400495=@post400495.sum(:difficulty).to_f/@post400495.count.to_f
      @ease400495=@post400495.sum(:ease).to_f/@post400495.count.to_f
      @volume400495=@post400495.sum(:volume).to_f/@post400495.count.to_f
    end
    if @post500595.count>=1
      @satisfaction500595=@post500595.sum(:satisfaction).to_f/@post500595.count.to_f
      @detail500595=@post500595.sum(:detail).to_f/@post500595.count.to_f
      @difficulty500595=@post500595.sum(:difficulty).to_f/@post500595.count.to_f
      @ease500595=@post500595.sum(:ease).to_f/@post500595.count.to_f
      @volume500595=@post500595.sum(:volume).to_f/@post500595.count.to_f
    end
    if @post600695.count>=1
      @satisfaction600695=@post600695.sum(:satisfaction).to_f/@post600695.count.to_f
      @detail600695=@post600695.sum(:detail).to_f/@post600695.count.to_f
      @difficulty600695=@post600695.sum(:difficulty).to_f/@post600695.count.to_f
      @ease600695=@post600695.sum(:ease).to_f/@post600695.count.to_f
      @volume600695=@post600695.sum(:volume).to_f/@post600695.count.to_f
    end
    if @post700795.count>=1
      @satisfaction700795=@post700795.sum(:satisfaction).to_f/@post700795.count.to_f
      @detail700795=@post700795.sum(:detail).to_f/@post700795.count.to_f
      @difficulty700795=@post700795.sum(:difficulty).to_f/@post700795.count.to_f
      @ease700795=@post700795.sum(:ease).to_f/@post700795.count.to_f
      @volume700795=@post700795.sum(:volume).to_f/@post700795.count.to_f
    end
    if @post800895.count>=1
      @satisfaction800895=@post800895.sum(:satisfaction).to_f/@post800895.count.to_f
      @detail800895=@post800895.sum(:detail).to_f/@post800895.count.to_f
      @difficulty800895=@post800895.sum(:difficulty).to_f/@post800895.count.to_f
      @ease800895=@post800895.sum(:ease).to_f/@post800895.count.to_f
      @volume800895=@post800895.sum(:volume).to_f/@post800895.count.to_f
    end
    if @post900990.count>=1
      @satisfaction900990=@post900990.sum(:satisfaction).to_f/@post900990.count.to_f
      @detail900990=@post900990.sum(:detail).to_f/@post900990.count.to_f
      @difficulty900990=@post900990.sum(:difficulty).to_f/@post900990.count.to_f
      @ease900990=@post900990.sum(:ease).to_f/@post900990.count.to_f
      @volume900990=@post900990.sum(:volume).to_f/@post900990.count.to_f
    end
    #総合満足度をレートで表示するための分岐
    if @satisfaction >=4.75
      @satisfaction_rate=5
    elsif @satisfaction >=4.25
      @satisfaction_rate=4.5
    elsif @satisfaction >=3.75
      @satisfaction_rate=4
    elsif @satisfaction >=3.25
      @satisfaction_rate=3.5
    elsif @satisfaction >=2.75
      @satisfaction_rate=3
    elsif @satisfaction >=2.25
      @satisfaction_rate=2.5
    elsif @satisfaction >=1.75
      @satisfaction_rate=2
    elsif @satisfaction >=1.25
      @satisfaction_rate=1.5
    elsif @satisfaction >=1.0
      @satisfaction_rate=1
    else
      @satisfaction_rate=0
    end


  end

  def index
    @search = Workbook.ransack(params[:q])
    @products = @search.result
    if @search_header
      @products = @search_header.result(distinct: true)
    end
  end


end
