describe GildedRose do
  subject(:gilded_rose){ described_class.new(
    [Item.new("Item", 5, 5),
      AgedBrie.new("Aged Brie", 5, 5), BackstagePass.new("Backstage Pass", 5, 5),
      Sulfuras.new,
      Conjured.new("Conjured", 5, 5)])}
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

      describe "#update_quality" do
        before(:each) do
          gilded_rose.update_quality
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

        it "should call the update_quality method for Conjured" do
          expect(gilded_rose.items[4].quality).to eq 3
        end
      end

      describe "reduce sell by date" do
        before(:each) do
          gilded_rose.update_quality
        end

        it "of normal items" do
          expect(gilded_rose.items[0].sell_in).to eq 4
        end

        it "for AgedBrie" do
          expect(gilded_rose.items[1].sell_in).to eq 4
        end

        it "for BackstagePass" do
          expect(gilded_rose.items[2].sell_in).to eq 4
        end

        it "for AgedBrie" do
          expect(gilded_rose.items[3].sell_in).to eq Float::INFINITY
        end

        it "for Conjured" do
          expect(gilded_rose.items[4].sell_in).to eq 4
        end
      end

      describe "item quality" do
        it "should never be negative" do
          gilded_rose.items[0].quality = 0
          gilded_rose.update_quality
          expect(gilded_rose.items[0].quality).to eq 0
        end

        it "degrades twice as fast if past sell by date" do
          gilded_rose.items[0].sell_in = -1
          gilded_rose.update_quality
          expect(gilded_rose.items[0].quality).to eq 3
        end
      end


    end
