class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :avatar
      t.integer :trust_points
      t.string :name
      t.string :surname
      t.string :descrtiption
      t.date :birthday

      t.timestamps
    end
  end
end
