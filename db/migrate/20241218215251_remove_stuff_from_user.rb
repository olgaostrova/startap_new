class RemoveStuffFromUser < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :users, :avatar, :string
    remove_column :users, :trust_points, :integer
    remove_column :users, :name, :string
    remove_column :users, :surname, :string
    remove_column :users, :secrtiption, :string
    remove_column :users, :birthday, :date
  end
end
