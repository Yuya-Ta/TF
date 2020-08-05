class Score < ApplicationRecord
  validates :points_r, {presence: true}
  validates :points_l, {presence: true}
  validates :user_id, {presence: true}
  validates :month, {presence: true}
  validates :month,uniqueness:{ scope: :user_id }

  belongs_to:user
end
