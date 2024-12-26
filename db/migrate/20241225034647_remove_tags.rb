class RemoveTags < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :tags, :string
    remove_column :startups, :tags, :string
  end
end
