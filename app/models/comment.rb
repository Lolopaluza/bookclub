class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  has_many :likes, as: :likeable
  has_many :dislikes, as: :dislikeable
end
