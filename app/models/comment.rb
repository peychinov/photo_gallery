class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo

  attr_accessible :content

  validates_presence_of :content
end
