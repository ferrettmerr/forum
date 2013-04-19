class Post < ActiveRecord::Base
  # has_many :posts, :class_name => "Post", 
  # 	:association_foreign_key => "post_id"
  has_many :posts, :class_name => "Post", :foreign_key => :thread_id
  belongs_to :thread, :class_name => "Post", :counter_cache => true
  belongs_to :user
  attr_accessible :message, :title, :posts, :thread, :user
  is_impressionable

  def self.threads
  	Post.all.reject {|post| post.thread}
  end
end
