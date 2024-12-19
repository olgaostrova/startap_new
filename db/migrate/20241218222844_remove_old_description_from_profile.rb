class RemoveOldDescriptionFromProfile < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :profiles, :descrtiption, :string
  end
end
