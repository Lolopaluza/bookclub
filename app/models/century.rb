class Century < ActiveRecord::Base
  has_many :happenings
  has_many :written_importances
end
