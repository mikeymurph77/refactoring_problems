require "csv"
require "pp"

class HotelReader
  def initialize(filename)
    @filename = filename
  end
  
  def read
    hotel = {}
    
    CSV.foreach(@filename, :headers => true) do |row|
      puts row[0]
    end
  end

end

hotlr = HotelReader.new("hotels.csv")
hotlr.read