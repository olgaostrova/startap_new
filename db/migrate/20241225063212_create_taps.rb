class CreateTaps < ActiveRecord::Migration[7.0]
  def change
    create_table :taps do |t|
      t.string :tapable_type
      t.integer :tapable_id
      t.integer :user_id

      t.timestamps
    end
  end
end
