describe GildedRose do
  subject(:gilded_rose){ described_class.new(
    [Item.new("Item", 5, 5),
      AgedBrie.new("Aged Brie", 5, 5), BackstagePass.new("Backstage Pass", 5, 5),
      Sulfuras.new]) }
  # let(:item){ double(:item).with(name = "Aged Brie", sell_in = 5, quality = 5) }
  # let(:aged_brie){ double :aged_brie.with("Aged Brie", 5, 5) }
  # let(:backstage_pass){ double :backstage_pass.with("Backstage Pass", 5, 5) }
  # let(:sulfuras){ double :sulfuras }
  # let(:conjured){ double :conjured.with("Conjured", 5, 5) }

  describe "#initialize" do
    it "start with an array of items" do
      expect(gilded_rose.items).to be_a(Array)
    end
  end

  describe "#each_day" do
    before(:each) do
      gilded_rose.each_day
    end
    it "should decrease the quality of normal items" do
      expect(gilded_rose.items[0].quality).to eq 4
    end

    it "should call the update_quality method for AgedBrie" do
      expect(gilded_rose.items[1].quality).to eq 6
    end

    it "should call the update_quality method for BackstagePass" do
      expect(gilded_rose.items[2].quality).to eq 8
    end

    it "should call the update_quality method for AgedBrie" do
      expect(gilded_rose.items[3].quality).to eq Float::INFINITY
    end
  end

end
