class WrittenImportance < ActiveRecord::Base
  belongs_to :century
  has_many :comments, as: :commentable
end
