class Hotel
  def initialize(row)
    @row = row
  end

  def name
    @row["Hotel"]
  end

  def phone_number
    @row["Phone Number"]
  end

  def city
    @row["City"]
  end

  def number_of_singles
    @row["Number of Singles"].to_i
  end

  def number_of_doubles
    @row["Number of Doubles"].to_i
  end

  def total_number_of_rooms
    number_of_singles + number_of_doubles
  end

  def information
    [
      "Phone Number: #{phone_number}",
      "Location: #{city}",
      "Rooms: #{total_number_of_rooms}"
    ].join("\n")
  end
end