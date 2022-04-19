require 'rspec'
require './lib/attendee'
require './lib/item'
require './lib/auction'

describe Auction do
  describe 'Itteration1' do
    before :each do
      @auction = Auction.new
      @item1 = Item.new('Chalkware Piggy Bank')
      @item2 = Item.new('Bamboo Picture Frame')
    end
    it 'exists with attributes' do
      expect(@auction).to be_a(Auction)
      expect(@auction.items).to eq([])
    end

    it 'can add items ' do
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.items).to eq([@item1, @item2])
    end

    it 'can give item names' do
      @auction.add_item(@item1)
      @auction.add_item(@item2)
      expect(@auction.item_names).to eq(['Chalkware Piggy Bank', 'Bamboo Picture Frame'])
    end
  end
end
