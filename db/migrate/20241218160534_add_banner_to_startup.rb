class AddBannerToStartup < ActiveRecord::Migration[7.0]
  def change
    add_column :startups, :banner, :string
  end
end
