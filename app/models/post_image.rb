class PostImage < ApplicationRecord
  #1:SQLの多の関係　こっちは多の方
  belongs_to :user
  attachment :image

  has_many :post_comments,dependent: :destroy
  has_many :favorites, dependent: :destroy

  # null・空白じゃない
  validates :shop_name, presence: true
  validates :image, presence: true

  #イイねを押したユーザが本当に存在するかのチェック
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
