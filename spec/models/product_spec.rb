require 'rails_helper'

RSpec.describe Product do

  describe '#cheapest_price' do

    let(:product) { create(:product) }
    let!(:variant1) { create(:variant, product: product, price: 100) }
    let!(:variant2) { create(:variant, product: product, price: 10) }
    let!(:variant3) { create(:variant, is_active: false, product: product, price: 1) }

    it "returns the cheapest variant's price" do
      expect(product.cheapest_price).to eq(variant2.price)
    end

  end

end
