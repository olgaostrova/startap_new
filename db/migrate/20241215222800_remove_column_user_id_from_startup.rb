class RemoveColumnUserIdFromStartup < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :startups, :user_id
  end
end
