class ChangeNullCoversAndAvatars < ActiveRecord::Migration[7.0]
  def change
    change_column_null :posts, :cover, from: false, to: true
    change_column_null :startups, :avatar, from: false, to: true
    change_column_null :profiles, :avatar, from: false, to: true
  end
end
