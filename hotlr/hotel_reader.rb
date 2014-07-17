require "csv"
require "pp"

class HotelReader
  def initialize(filename)
    @filename = filename
    @hotels = []
  end
  
  def read
    CSV.foreach(@filename, headers: true) do |row|
      @hotels << Hotel.new(row)
    end
  end

  attr_reader :hotels
end