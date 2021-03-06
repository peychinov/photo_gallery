class User < ActiveRecord::Base
  has_many :photos
  has_many :comments, through: :photos

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :username, :is_admin

  validates_presence_of :first_name, :last_name, :username
  validates :email, :username, :uniqueness => true
end
