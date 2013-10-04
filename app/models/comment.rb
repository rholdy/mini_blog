class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :commenter_name, :message, :post, :post_id
  validates :commenter_name, presence: true,
                              length: { in: 2..50 }, allow_blank: true
  validates :message, length: { in: 10...500 }, allow_blank: true
end
