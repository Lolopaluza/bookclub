class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  has_many :dislikes, as: :dislikeable
end
