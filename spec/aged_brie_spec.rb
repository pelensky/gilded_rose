describe AgedBrie do
  subject(:aged_brie){ described_class.new("Aged Brie", 5, 5)}

  context "#initialize" do

    it "initializes with a name" do
      expect(aged_brie.name).to eq "Aged Brie"
    end
    it "initializes with a sell_in number" do
      expect(aged_brie.sell_in).to be_a_kind_of(Integer)
    end
    it "initializes with a quality number" do
      expect(aged_brie.quality).to be_a_kind_of(Integer)
    end

  end


end
