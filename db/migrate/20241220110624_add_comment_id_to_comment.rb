class AddCommentIdToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :comment_id, :integer
  end
end
