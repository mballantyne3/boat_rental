class Dock

  attr_reader :name, :max_rental_time, :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    hours_to_charge = boat.hours_rented
    hours_to_charge = max_rental_time if hours_to_charge > max_rental_time

    {
      :card_number => rental_log[boat].credit_card_number,
      :amount => boat.price_per_hour * hours_to_charge
    }
  end

end
