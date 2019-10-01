class AddStarToHotels < ActiveRecord::Migration[6.0]
  def change
    add_column :hotels, :star, :integer, :default => nil
  end
end
