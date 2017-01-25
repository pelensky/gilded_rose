describe Item do
  subject(:item){ described_class.new("name", 3, 10 )}

  context "#initialize" do

    it "initializes with a name" do
      expect(item.name).to eq "name"
    end

    it "initializes with a sell_in number" do
      expect(item.sell_in).to be_a_kind_of(Integer)
    end

    it "initializes with a quality number" do
      expect(item.quality).to be_a_kind_of(Integer)
    end
  end

  context "#to_s" do
    it "returns a string when called" do
      expect(item.to_s).to eq "name, 3, 10"
    end
  end

end
