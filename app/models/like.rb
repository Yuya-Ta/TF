class Like < ApplicationRecord
  validates :user_id, {presence: true}
  # phoneが空ならば、emailを必須にする
  validates :post_id, presence: true, unless: :to_id?

  # emailが空ならば、phoneを必須にする
  validates :to_id, presence: true, unless: :post_id?

  belongs_to :post
  belongs_to :user
end
