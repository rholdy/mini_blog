class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments, dependent: :destroy
  attr_accessible :body, :publish_at, :title, :author_id
  validates :body, length: { in: 10..10000 }
  validates :title, presence: true
  validates :author, presence: {message: "must be a real author that exists, don't hack me"}
end
