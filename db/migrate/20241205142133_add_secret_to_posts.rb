class AddSecretToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :secret, :string
  end
end
