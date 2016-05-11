class Happening < ActiveRecord::Base
  belongs_to :century
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable, dependent: :destroy
end
