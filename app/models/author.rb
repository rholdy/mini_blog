class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :posts
  attr_accessible :bio, :email, :first_name, :last_name, :twitter, :username
  # presence
  validates :email, :first_name, :last_name, :username, presence: true
  # unique
  validates :email, :username, uniqueness: true
  # length
  validates :bio, length: { in: 10..500 }
end
