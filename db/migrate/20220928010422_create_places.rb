class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :price_per_hour
      t.integer :capicity
      t.string :photo_url
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
