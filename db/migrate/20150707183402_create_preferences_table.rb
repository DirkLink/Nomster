class CreatePreferencesTable < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :user_id
      t.string :description
      t.timestamps null: false
    end
  end
end
