require "csv"
require "pp"

class HotelReader
  def initialize(filename)
    @filename = filename
  end
  
  def read
    CSV.foreach(@filename, headers: true) do |row|
      puts row["Hotel"]
    end
  end
end

hotlr = HotelReader.new("hotels.csv")
hotlr.read