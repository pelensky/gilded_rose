require_relative 'item'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'backstage_pass'

class GildedRose

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|

        if item.quality > 0
      else
        if item.quality < 50
          item.quality = item.quality + 1
        end
      end
    end
    if item.sell_in < 0
          if item.quality > 0
        else
          item.quality = item.quality - item.quality
        end
      end
    end
  end
