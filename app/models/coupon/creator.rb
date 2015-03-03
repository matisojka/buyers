class Coupon
  class Creator < Struct.new(:variant)

    def call
      Coupon.create!(variant: variant, code: random_code)
    end

    private

    def random_code
      SecureRandom.hex
    end

  end
end
