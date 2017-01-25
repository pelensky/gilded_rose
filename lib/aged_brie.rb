# responsibilities for aged brie

class AgedBrie < Item

  def initialize(name = "Aged Brie", sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    increase_quality_by_one
    set_quality_to_50 if quality_over_50
  end

  private
  def increase_quality_by_one
    @quality += 1
  end

  def set_quality_to_50
    @quality = 50
  end

  def quality_over_50
    @quality > 50
  end

end
