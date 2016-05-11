class Dislike < ActiveRecord::Base
  belongs_to :dislikeable, polymorphic: true
  validates_uniqueness_of :post_id, scope: :user_id
end
