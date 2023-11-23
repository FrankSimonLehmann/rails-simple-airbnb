class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :from
      t.date :to
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
