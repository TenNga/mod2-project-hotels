class Review < ApplicationRecord
  belongs_to :hotel
  belongs_to :guest

  validates :title, presence: true
  validates :content, presence: true

  validates :title, length: {minimum: 3, maximum: 35}
  validates :content, length: {minimum: 5, maximum: 250}

  def title_lentgh
    if :title.length < 3
      errors.add(:title, "is too short")
    elsif :title.length > 35
      errors.add(:title, "must be less than 35 characters")
    end
  end

  def content_lentgh
    if :content.length < 5 
      errors.add(:content, "is too short")
    elsif :content.length > 255
      errors.add(:content, "must be less than 250 characters")
    end
  end

end
