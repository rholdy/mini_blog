class Post < ActiveRecord::Base
  attr_accessible :author_name, :body, :publish_at, :title
end
