class RemoveTagsFromUser < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :users, :tags, :string
  end
end
