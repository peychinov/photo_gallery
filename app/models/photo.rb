class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :comments_allowed, :image, :title
end
