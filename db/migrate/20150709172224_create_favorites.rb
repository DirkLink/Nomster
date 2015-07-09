class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :yelp_id
      t.string :name
      t.string :url
      t.integer :review_count
      t.decimal :rating
      t.string :address
      t.timestamps null: false
    end
  end
end
