class WrittenImportance < ActiveRecord::Base
  belongs_to :century
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  has_many :dislikes, as: :dislikeable
end
