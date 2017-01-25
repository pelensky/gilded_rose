#controls the inn
require_relative 'item'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'backstage_pass'
require_relative 'conjured'

class GildedRose

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      reduce_sell_in_date_by_one(item)
      special_item(item) ? item.update_quality :       change_quality_of_item(item)
    end
  end

  private

  def special_item(item)
    item.is_a?(AgedBrie) || item.is_a?(BackstagePass) || item.is_a?(Sulfuras) || item.is_a?(Conjured)
  end

  def quality_decreases_by_one(item)
    item.quality -= 1
  end

  def quality_below_zero(item)
    item.quality < 0
  end

  def quality_equals_zero(item)
    item.quality = 0
  end

  def past_sell_by_date(item)
    item.sell_in <= 0
  end

  def quality_decreases_by_two(item)
    item.quality -= 2
  end

  def reduce_sell_in_date_by_one(item)
    item.sell_in -= 1
  end

  def change_quality_of_item(item)
    past_sell_by_date(item) ? quality_decreases_by_two(item) : quality_decreases_by_one(item)
    quality_can_not_go_below_zero(item)
  end

  def quality_can_not_go_below_zero(item)
    quality_equals_zero(item) if quality_below_zero(item)
  end

end
