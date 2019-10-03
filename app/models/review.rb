class Review < ApplicationRecord
  belongs_to :hotel
  belongs_to :guest

  validates :title, presence: true
  validates :content, presence: true

  validates :title, length: {minimum: 3, maximum: 35}
  validates :content, length: {minimum: 5, maximum: 250}


end
