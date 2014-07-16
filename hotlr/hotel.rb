class Hotel
  def initialize(row)
    @row = row
  end

  def name_of_hotel
    @row["Hotel"]
  end
end