class ChangeDefaultStartupIdToPosts < ActiveRecord::Migration[7.0]
  def change
      change_column_null :posts, :startup_id, from: false, to: true
  end
end
