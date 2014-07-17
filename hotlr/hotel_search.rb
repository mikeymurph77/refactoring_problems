require "./hotel"
require "./hotel_reader"
require "./null_hotel"

class HotelSearch
  def initialize(hotels)
    @hotels = hotels
  end

  def search
    prompt_for_hotel_name
    found_hotel = find_matching_hotel
    puts found_hotel.information
  end

  def prompt_for_hotel_name
    puts "What property? > "
    @user_search = gets.chomp
  end

  def find_matching_hotel
    @hotels.find { |hotel|
      hotel.name == @user_search 
    } || NullHotel.new
  end
end

hotel_reader = HotelReader.new("hotels.csv")
hotel_reader.read

hotel_search = HotelSearch.new(hotel_reader.hotels)
hotel_search.search