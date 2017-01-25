describe Conjured do
  subject(:conjured){ described_class.new("Conjured", 5, 5)}

  context "#initialize" do
    it "initializes with a name" do
      expect(conjured.name).to eq "Conjured"
    end
    it "initializes with a sell_in number" do
      expect(conjured.sell_in).to be_a_kind_of(Integer)
    end
    it "initializes with a quality number" do
      expect(conjured.quality).to be_a_kind_of(Integer)
    end
  end

  context "#update_quality" do

    it "should never decrease below zero" do
      conjured.quality = 0
      conjured.update_quality
      expect(conjured.quality).to eq 0
    end

    it "quality decrases by two" do
      conjured.update_quality
      expect(conjured.quality).to eq 3
    end

    it "quality goes down twice as fast after sell by date" do
      conjured.sell_in = 0
      conjured.quality = 5
      conjured.update_quality
      expect(conjured.quality).to eq 1
    end

  end

end
