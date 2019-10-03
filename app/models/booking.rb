class Booking < ApplicationRecord
  belongs_to :guest
  belongs_to :room

  validates :number_of_guest, :presence => true
  validates_inclusion_of :number_of_guest, :in => 0..99, :message => 'must be between 1 and 6'
  # validates :number_of_guest, numericality: { greater_than: 0, message:  }
  #  validates :number_of_guest, numericality: { less_than: 7, message: 'must be between 1 and 6' }   
  # validate :guest_count

  # validates :check_in_date, :check_out_date, presence: true
  # validate :check_out_date_after_check_in_date

  # private

  # def check_out_date_after_check_in_date  
  #   if check_out_date < check_in_date
  #     errors.add(:check_in_date, "must be before Check-out date")
  #   end
  # end 

  # def guest_count
  #   min = 1
  #   max = 6
  #   if number_of_guest == nil
  #     number_of_guest = 0
  #   end

  #   if number_of_guest < min || number_of_guest > max
  #     errors.add(:number_of_guest, "must be bewteen 1 and 6")
  #   end

  end
  
