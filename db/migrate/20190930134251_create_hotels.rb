class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :image
      t.string :name
      t.integer :ave_review
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
