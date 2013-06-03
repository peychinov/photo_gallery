class Category < ActiveRecord::Base
  has_many :photos

  attr_accessible :name
  validates_presence_of :name
end
