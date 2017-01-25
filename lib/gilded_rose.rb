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
      if item.is_a?(Item)
        item.quality -= 1
      else
        item.update_quality
      end
    end
  end


end
