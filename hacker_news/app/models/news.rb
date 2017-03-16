class News < ActiveRecord::Base
  has_many :comments
  validates :information, :presence => true
end
