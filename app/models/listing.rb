class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, class_name: "User"
  has_many :reservations

  def guests
    array = []
    Reservation.where(listing_id: self.id).each do |r|
      array << r.guest
    end
    array
  end

  def reviews
    array = []
    guests.each do |g|
      array << Review.where(guest_id: g.id)
    end
    array.flatten
  end

end
