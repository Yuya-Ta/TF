class RankingsController < ApplicationController

  def rank900
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_9002=Workbook.joins(:posts).where("points >= 900 AND points <= 990").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_9003=Workbook.joins(:posts).where("points >= 900 AND points <= 990").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def rank800
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_8002=Workbook.joins(:posts).where("points >= 800 AND points <= 895").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_8003=Workbook.joins(:posts).where("points >= 800 AND points <= 895").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def rank700
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_7002=Workbook.joins(:posts).where("points >= 700 AND points <= 795").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_7003=Workbook.joins(:posts).where("points >= 700 AND points <= 795").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def rank600
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_6002=Workbook.joins(:posts).where("points >= 600 AND points <= 695").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_6003=Workbook.joins(:posts).where("points >= 600 AND points <= 695").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def rank500
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_5002=Workbook.joins(:posts).where("points >= 500 AND points <= 595").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_5003=Workbook.joins(:posts).where("points >= 500 AND points <= 595").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def rank400
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_4002=Workbook.joins(:posts).where("points >= 400 AND points <= 495").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_4003=Workbook.joins(:posts).where("points >= 400 AND points <= 495").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def rank300
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_3002=Workbook.joins(:posts).where("points >= 300 AND points <= 395").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_3003=Workbook.joins(:posts).where("points >= 300 AND points <= 395").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def rank200
      @i=0
      @i1=0
      #レビュー件数が多い順
      @ranking_2002=Workbook.joins(:posts).where("points >= 200 AND points <= 295").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @ranking_2003=Workbook.joins(:posts).where("points >= 200 AND points <= 295").select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def workbook
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook1=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def all
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_all=Workbook.where(all: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_all1=Workbook.where(all: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def listening
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_listening=Workbook.where(listening: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_listening1=Workbook.where(listening: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def reading
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_reading=Workbook.where(reading: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_reading1=Workbook.where(reading: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def grammer
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_grammer=Workbook.where(grammer: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_grammer1=Workbook.where(grammer: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def word
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_word=Workbook.where(word: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_word1=Workbook.where(word: 1).joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(satisfaction) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def detail
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_detail=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(detail) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_detail1=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(detail) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def cost
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_cost=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(volume) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_cost1=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(volume) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end
  def ease
      @i=0
      @i1=0
      #レビュー件数が多い順
      @workbook_ease=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(ease) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('posts_count desc').limit(5)
      #満足度が多い順
      @workbook_ease1=Workbook.joins(:posts).select('workbooks.id,workbooks.product,workbooks.image,workbooks.author,count(posts.id) as posts_count,avg(ease) as satisfaction_all,posts.good_content,posts.bad_content').group(:id).order('satisfaction_all desc').limit(5)
  end

end
