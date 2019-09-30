class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :star
      t.string :content
      t.belongs_to :hotel, null: false, foreign_key: true
      t.belongs_to :guest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
