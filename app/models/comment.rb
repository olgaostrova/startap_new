class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :comment, optional: true
  has_many :likes, as: :likeable
  has_many :dislikes, as: :dislikeable
  has_many :taps, as: :tapable
  has_many :replies, class_name: "Comment", foreign_key: "comment_id", dependent: :destroy

  validates :text, presence: true

  default_scope { order(created_at: "DESC") }

  scope :no_replies, -> { where(comment_id: nil) }
end
