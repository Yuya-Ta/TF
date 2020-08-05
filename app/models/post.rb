class Post < ApplicationRecord
  validates :detail, {presence: true}
  validates :user_id, {presence: true}
  validates :workbook_id, {presence: true}
  validates :satisfaction, {presence: true}
  validates :volume, {presence: true}
  validates :ease, {presence: true}
  validates :difficulty, {presence: true}
  validates :period, {presence: true}

has_many :likes
belongs_to :user
belongs_to :workbook

  def user
    return User.find_by(id: self.user_id)
 end

 def workbook
   return Workbook.find_by(id: self.workbook_id)
 end

end
