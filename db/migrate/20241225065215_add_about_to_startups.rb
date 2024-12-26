class AddAboutToStartups < ActiveRecord::Migration[7.0]
  def change
    add_column :startups, :about, :string
  end
end
