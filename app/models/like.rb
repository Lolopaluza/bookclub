class Like < ActiveRecord::Base
  belongs_to :likeable, polymorphic: true
  validates_uniqueness_of :post_id, scope: :user_id
end
