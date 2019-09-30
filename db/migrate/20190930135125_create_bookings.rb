class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :check_in_date
      t.string :check_out_date
      t.integer :number_of_guest
      t.string :booking_date
      t.integer :cost
      t.belongs_to :guest, null: false, foreign_key: true
      t.belongs_to :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
