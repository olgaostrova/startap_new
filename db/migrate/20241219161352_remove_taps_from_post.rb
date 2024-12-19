class RemoveTapsFromPost < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :posts, :taps, :integer
  end
end
