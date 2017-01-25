# responsibilities for backsgtage passes

class BackstagePass < Item

  def initialize(name = "Backstage Pass", sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    follow_quality_rules
    set_quality_to_zero if past_sell_by_date?
    set_quality_to_fifty if quality_over_50?
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

  def increase_quality_by_one
    @quality += 1
  end

  def increase_quality_by_three
    @quality += 3
  end

  def increase_quality_by_two
    @quality += 2
  end

  def follow_quality_rules
    increase_quality_by_one if over_ten_days
    increase_quality_by_two if six_to_ten_days
    increase_quality_by_three if zero_to_five_days
  end

  def past_sell_by_date?
    @sell_in <= 0
  end

  def set_quality_to_zero
    @quality = 0
  end

  def set_quality_to_fifty
    @quality = 50
  end

  def quality_over_50?
    @quality > 50
  end

end
