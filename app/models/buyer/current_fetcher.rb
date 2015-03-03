class Buyer
  class CurrentFetcher < Struct.new(:buyer_id)

    def call
      logged_in_user || visitor
    end

    private

    def user
      Buyer.find_by(id: buyer_id)
    end

    def logged_in_user
      LoggedInUser.new(user) if user.present?
    end

    def visitor
      Visitor.new
    end

  end
end
