class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :commenter_name, :message, :post, :post_id
end
