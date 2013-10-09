class Author < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :comments, through: :posts
  attr_accessible :bio, :email, :first_name, :last_name, :twitter, :username, :password, :password_confirmation
  validates :first_name, :last_name, :username, presence: true
  validates :email, :username, uniqueness: true
  validates :bio, length: { in: 10..500 }

  validates :email, presence: true,
                    uniqueness: true,
                    length: { minimum: 3 },
                    format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}

  def full_name 
    (first_name + " " + last_name).titleize
  end

end
