class User < ApplicationRecord
  has_secure_password
  validates :email, {presence: true, uniqueness: true}

  def scores
    return Score.where(user_id: self.id)
  end

  has_many :likes
  has_many :users
  has_many :scores 

end
