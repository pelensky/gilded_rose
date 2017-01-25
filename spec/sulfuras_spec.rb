describe Sulfuras do
  subject(:sulfuras){ described_class.new }

  context "#initialize" do
    it "initializes with a name" do
      expect(sulfuras.name).to eq "Sulfuras"
    end
    it "initializes with a sell_in number" do
      expect(sulfuras.sell_in).to eq Float::INFINITY
    end
    it "initializes with a quality number" do
      expect(sulfuras.quality).to eq Float::INFINITY
    end
  end


  context "#update_quality" do

    it "should never change the quality" do
      sulfuras.update_quality
      expect(sulfuras.update_quality).to eq Float::INFINITY
    end
  end

end
