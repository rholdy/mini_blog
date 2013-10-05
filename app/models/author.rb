class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :posts
  attr_accessible :bio, :email, :first_name, :last_name, :twitter, :username
  validates :email, :first_name, :last_name, :username, presence: true
  validates :email, :username, uniqueness: true
  validates :bio, length: { in: 10..500 }

  def full_name 
    (first_name + " " + last_name).titleize
  end

end
