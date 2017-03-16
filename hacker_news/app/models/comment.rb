class Comment < ActiveRecord::Base
  belongs_to :news

  validates :user, :presence => true
  validates :comment, :presence => true
end
