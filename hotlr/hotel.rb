class Hotel
  def initialize(row)
    @row = row
  end

  def name
    @row["Hotel"]
  end

  def query_information
    phone_number = @row["Phone Number"]
    city = @row["City"]
    number_of_singles = @row["Number of Singles"].to_i
    number_of_doubles = @row["Number of Doubles"].to_i

    puts "Phone Number: #{phone_number}"
    puts "Location: #{city}"
    puts "Rooms: #{number_of_singles + number_of_doubles}"
  end
end