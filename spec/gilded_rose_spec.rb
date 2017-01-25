describe GildedRose do
  subject(:gilded_rose){ described_class.new([:item1, :item2, :item3]) }
  let(:item1){ double :item.with("coke", 10, 5) }
  let(:item2){ double :item.with("chips", 4, 3) }
  let(:item3){ double :item.with("popcorn", 8, 2) }

  describe "#initialize" do
    it "start with an array of items" do
      expect(gilded_rose.items).to eq [:item1, :item2, :item3]
    end
  end

end
