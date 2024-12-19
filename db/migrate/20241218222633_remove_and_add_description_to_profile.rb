class RemoveAndAddDescriptionToProfile < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :profiles, :descrtiption, :string
  end
  def change
    add_column :profiles, :description, :string
  end
end
