# responsibilities for conjured items

class Conjured < Item

  def initialize(name = "Conjured", sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end
end
