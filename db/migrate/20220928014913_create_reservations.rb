class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.time :visit_hour
      t.integer :hour_quantity
      t.boolean :status, default: false
      t.integer :total_price
      t.boolean :paid_status, default: false
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
