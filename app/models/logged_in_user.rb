class LoggedInUser < Struct.new(:user)

  alias :unwrap :user

  delegate :name, to: :user

  def logged_in?
    true
  end

  def visitor?
    false
  end

end
