class Booking < ApplicationRecord
  belongs_to :guest
  belongs_to :room

  validates :number_of_guest, :presence => true
  validates_inclusion_of :number_of_guest, :in => 1..6, :message => 'must be between 1 and 6'

  validates :check_in_date, :check_out_date, presence: true
  validate :check_out_date_after_check_in_date

  private

  def check_out_date_after_check_in_date  
    if check_out_date < check_in_date
      errors.add(:check_in_date, "must be before Check-out date")
    end
  end 

  end
  
