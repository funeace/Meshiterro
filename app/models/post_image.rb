class PostImage < ApplicationRecord
  #1:SQLの多の関係　こっちは多の方
  belongs_to :user
  attachment :image

  has_many :post_comments,dependent: :destroy
end
