class DeleteStartupsToUsers < ActiveRecord::Migration[7.0]
  def change
    drop_table :startups_users
  end
end
