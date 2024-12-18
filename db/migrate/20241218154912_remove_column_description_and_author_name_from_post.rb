class RemoveColumnDescriptionAndAuthorNameFromPost < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :posts, :description
    remove_column :posts, :author_name
  end
end
