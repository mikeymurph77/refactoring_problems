class Hotel
  def initialize(row)
    @row = row
  end

  def name
    @row["Hotel"]
  end
end