# responsibilities for conjured items

class Conjured < Item

  def initialize(name = "Conjured", sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    past_sell_by_date ? @quality -= 4 :  @quality -= 2
    set_quality_to_zero if quality_below_zero
  end


  private
  def quality_below_zero
    @quality <= 0
  end

  def set_quality_to_zero
    @quality = 0
  end

  def past_sell_by_date
    @sell_in <= 0
  end

end
