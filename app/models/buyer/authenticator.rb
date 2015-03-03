class Buyer
  class Authenticator

    attr_reader :email, :password

    def initialize(email:, password:)
      @email = email
      @password = password
    end

    def call
      user.authenticate(password)
    end

    private

    def user
      Buyer.find_by(email: email) || Visitor.new
    end

  end
end
