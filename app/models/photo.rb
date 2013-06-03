class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :comments

  attr_accessible :comments_allowed, :image, :title
end
