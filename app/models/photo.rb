class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :comments

  attr_accessible :comments_allowed, :image, :title, :category_id

  attr_accessor :image_file_name

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_presence_of :title, :image
end
