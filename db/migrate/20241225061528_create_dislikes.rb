class CreateDislikes < ActiveRecord::Migration[7.0]
  def change
    create_table :dislikes do |t|
      t.string :dislikeable_type
      t.integer :dislikeable_id
      t.integer :user_id

      t.timestamps
    end
  end
end
