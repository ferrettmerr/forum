class Post < ActiveRecord::Base
  # has_many :posts, :class_name => "Post", 
  # 	:association_foreign_key => "post_id"
  belongs_to :parent, :class_name => "Post"
  attr_accessible :message, :title, :parent
  is_impressionable
end
