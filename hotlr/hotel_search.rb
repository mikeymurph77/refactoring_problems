require "./hotel"
require "./hotel_reader"

class HotelSearch
  def initialize(hotels)
    @hotels = hotels
  end

  def search
    prompt_for_hotel_name
    search_match_hotel
  end

  def prompt_for_hotel_name
    puts "What property? > "
    @user_search = gets.chomp
  end

  def search_match_hotel
    found_hotel = @hotels.find { |hotel|
      hotel.name_of_hotel == @user_search 
    } || NullHotel.new

    puts found_hotel.name
  end
end

class NullHotel
  def hotel_name
    puts "Hotel does not exist"
  end
end

hotel_reader = HotelReader.new("hotels.csv")
hotel_reader.read

hotel_search = HotelSearch.new(hotel_reader.hotels)
hotel_search.search