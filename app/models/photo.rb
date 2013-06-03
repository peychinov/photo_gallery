require 'carrierwave/orm/activerecord'

class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :comments

  attr_accessible :comments_allowed, :image, :title, :category_id

  mount_uploader :image, ImageUploader

  validates_presence_of :title, :image
end
