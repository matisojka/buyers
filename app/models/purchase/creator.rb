class Purchase
  class Creator

    attr_reader :buyer

    def initialize(buyer:, product_id:)
      @buyer = buyer
      @product_id = product_id
    end

    def call
      if buyer_has_enough_credits?
        buyer.credits -= product.cheapest_price
        buyer.save!
        true
      else
        false
      end
    end

    private

    def buyer_has_enough_credits?
      buyer.credits >= product.cheapest_price
    end

    def product
      @product ||= Product.find(@product_id)
    end

  end
end
