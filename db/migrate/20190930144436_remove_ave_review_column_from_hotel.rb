class RemoveAveReviewColumnFromHotel < ActiveRecord::Migration[6.0]
  def change
    remove_column :hotels, :ave_review
  end
end
