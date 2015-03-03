module SessionConcern
  extend ActiveSupport::Concern

  included do
    helper_method :current_user
  end

  private

  def current_user
    @current_user ||= Buyer::CurrentFetcher.new(session[:user_id]).call
  end

  def current_user=(user)
    @current_user = nil
    session[:user_id] = user.id
  end

end
