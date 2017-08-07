class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validate  :validate_booking_available


  def validate_booking_available
    bookingAvailable = (Booking.where(room_id: room_id, booking_date: booking_date).length == 0)
    if !bookingAvailable
      errors[:base] << 'There is already an existing booking for this room and date'
    end
   end

end
