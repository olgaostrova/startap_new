class CreateStartupsUsersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :startups, :users
  end
end
