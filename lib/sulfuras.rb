# responsibilities for sulfuras
class Sulfuras < Item
  SELL_IN = Float::INFINITY
  QUALITY = Float::INFINITY

  def initialize(name = "Sulfuras", sell_in = SELL_IN, quality = SELL_IN)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_quality
    @quality = Float::INFINITY
  end

end
