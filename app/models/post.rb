class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable, dependent: :destroy
  validates_presence_of :user, :body
end
