#controls the inn
require_relative 'item'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'backstage_pass'

class GildedRose

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def each_day
    @items.each do |item|
      if special_item(item)
        item.update_quality
      else
        item.quality -= 1
      end
    end
  end

  def special_item(item)
    item.is_a?(AgedBrie) || item.is_a?(BackstagePass) || item.is_a?(Sulfuras)
  end


end
