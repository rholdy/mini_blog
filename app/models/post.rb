class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  attr_accessible :body, :publish_at, :title, :author_id
  validates :body, length: { in: 10..10000 }
  validates :title, presence: true
end
