class AddCoverToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :cover, :string
  end
end
