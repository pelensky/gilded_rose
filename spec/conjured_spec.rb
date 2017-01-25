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
end
