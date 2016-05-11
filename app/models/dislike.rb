class Dislike < ActiveRecord::Base
  belongs_to :dislikeable, polymorphic: true
end
