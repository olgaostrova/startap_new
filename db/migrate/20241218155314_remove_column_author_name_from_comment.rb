class RemoveColumnAuthorNameFromComment < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :comments, :author_name
  end
end
