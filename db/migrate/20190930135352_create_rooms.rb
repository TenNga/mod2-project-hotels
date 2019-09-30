class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :image
      t.string :type
      t.integer :rate

      t.timestamps
    end
  end
end
