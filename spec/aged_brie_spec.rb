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


  context "#update_quality" do

    it "should never increase the quality over 50" do
      aged_brie.quality = 49
      aged_brie.update_quality
      expect(aged_brie.quality).to eq 50
    end

    it "if there are over 10 days, quality increases by one" do
      aged_brie.sell_in = 15
      aged_brie.quality = 10
      aged_brie.update_quality
      expect(aged_brie.quality).to eq 11
    end

    it "if there are between 6 and 10 days, quality increases by two" do
      aged_brie.sell_in = 8
      aged_brie.quality = 10
      aged_brie.update_quality
      expect(aged_brie.quality).to eq 12
    end

    it "if there are between 0 and 5 days, quality increases by three" do
      aged_brie.sell_in = 1
      aged_brie.quality = 10
      aged_brie.update_quality
      expect(aged_brie.quality).to eq 13
    end

    it "quality goes down to zero after sell by date" do
      aged_brie.sell_in = 0
      aged_brie.quality = 10
      aged_brie.update_quality
      expect(aged_brie.quality).to eq 0
    end

  end

end
