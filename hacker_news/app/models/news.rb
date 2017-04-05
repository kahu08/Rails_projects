class News < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates :information, :presence => true
end
