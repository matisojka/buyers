class Purchase
  class Creator

    attr_reader :buyer

    def initialize(buyer:, product_id:)
      @buyer = buyer
      @product_id = product_id
    end

    def call
      if buyer_has_enough_credits?
        ActiveRecord::Base.transaction do
          substract_credits!
          assign_cheapest_variant_to_buyer!
          create_coupon!
        end
        true
      else
        false
      end
    end

    private

    def substract_credits!
      buyer.credits -= product.cheapest_price
      buyer.save!
    end

    def assign_cheapest_variant_to_buyer!
      cheapest_variant.buyer = buyer

      cheapest_variant.save!
    end

    def cheapest_variant
      @cheapest_variant ||= product.cheapest_variant
    end

    def create_coupon!
      Coupon::Creator.new(cheapest_variant).call
    end

    def buyer_has_enough_credits?
      buyer.credits >= product.cheapest_price
    end

    def product
      @product ||= Product.find(@product_id)
    end

  end
end
