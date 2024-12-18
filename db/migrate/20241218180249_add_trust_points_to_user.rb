class AddTrustPointsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :trust_points, :integer
  end
end
