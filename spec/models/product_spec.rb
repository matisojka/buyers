require 'rails_helper'

RSpec.describe Product do

  let(:product) { create(:product) }
  let!(:variant1) { create(:variant, product: product, price: 100) }
  let!(:variant2) { create(:variant, product: product, price: 10) }
  let!(:variant3) { create(:variant, is_active: false, product: product, price: 1) }

  describe '#cheapest_price' do

    it "returns the cheapest variant's price" do
      expect(product.cheapest_price).to eq(variant2.price)
    end

  end

  describe '#cheapest_variant' do

    it "returns the cheapest variant" do
      expect(product.cheapest_variant).to eq(variant2)
    end

  end

end
