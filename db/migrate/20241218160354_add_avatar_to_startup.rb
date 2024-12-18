class AddAvatarToStartup < ActiveRecord::Migration[7.0]
  def change
    add_column :startups, :avatar, :string
  end
end
