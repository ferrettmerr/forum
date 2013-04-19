class AddPostCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :posts_count, :integer, default_value: 0
  end
end
