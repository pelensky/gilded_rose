describe BackstagePass do
  subject(:backstage_pass){ described_class.new("Backstage Pass", 5, 5)}

  context "#initialize" do
    it "initializes with a name" do
      expect(backstage_pass.name).to eq "Backstage Pass"
    end
    it "initializes with a sell_in number" do
      expect(backstage_pass.sell_in).to be_a_kind_of(Integer)
    end
    it "initializes with a quality number" do
      expect(backstage_pass.quality).to be_a_kind_of(Integer)
    end
  end


  context "#update_quality" do
    it "should never increase the quality over 50" do
      backstage_pass.quality = 49
      backstage_pass.update_quality
      expect(backstage_pass.quality).to eq 50
    end

    it "if there are over 10 days, quality increases by one" do
      backstage_pass.sell_in = 15
      backstage_pass.quality = 10
      backstage_pass.update_quality
      expect(backstage_pass.quality).to eq 11
    end

    it "if there are between 6 and 10 days, quality increases by two" do
      backstage_pass.sell_in = 8
      backstage_pass.quality = 10
      backstage_pass.update_quality
      expect(backstage_pass.quality).to eq 12
    end

    it "if there are between 0 and 5 days, quality increases by three" do
      backstage_pass.sell_in = 1
      backstage_pass.quality = 10
      backstage_pass.update_quality
      expect(backstage_pass.quality).to eq 13
    end

    it "quality goes down to zero after sell by date" do
      backstage_pass.sell_in = 0
      backstage_pass.quality = 10
      backstage_pass.update_quality
      expect(backstage_pass.quality).to eq 0
    end

  end

end
