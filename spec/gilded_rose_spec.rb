describe GildedRose do
  subject(:gilded_rose){ described_class.new([:item, :aged_brie, :backstage_pass, :sulfuras, :conjured]) }
  let(:item){ double :item.with("item", 10, 5) }
  let(:aged_brie){ double :aged_brie.with("Aged Brie", 5, 5) }
  let(:backstage_pass){ double :backstage_pass.with("Backstage Pass", 5, 5) }
  let(:sulfuras){ double :sulfuras }
  let(:conjured){ double :conjured.with("Conjured", 5, 5) }

  describe "#initialize" do
    it "start with an array of items" do
      expect(gilded_rose.items).to eq [:item, :aged_brie, :backstage_pass, :sulfuras, :conjured]
    end
  end

  describe "sell_in" do
    it "shuld go down by one each day" do

    end
  end

end
