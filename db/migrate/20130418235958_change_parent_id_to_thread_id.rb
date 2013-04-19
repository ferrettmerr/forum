class ChangeParentIdToThreadId < ActiveRecord::Migration
  def change
  	rename_column :posts, :parent_id, :thread_id
  end
end
