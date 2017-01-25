class AgedBrie < Item

  def initialize(name = "Aged Brie", sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    @quality += 1 if over_ten_days
    @quality += 2 if six_to_ten_days
    @quality += 3 if zero_to_five_days
    set_quality_to_zero if past_sell_by_date
    set_quality_to_50 if quality_over_50
  end

  private

  def over_ten_days
    @sell_in > 10
  end

  def six_to_ten_days
    @sell_in > 5 && @sell_in < 11
  end

  def zero_to_five_days
    @sell_in > 0 && @sell_in < 6
  end

  def past_sell_by_date
    @sell_in <= 0
  end

  def set_quality_to_zero
    @quality = 0
  end

  def set_quality_to_50
    @quality = 50
  end

  def quality_over_50
    @quality > 50
  end

end
