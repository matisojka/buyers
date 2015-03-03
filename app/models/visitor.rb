class Visitor

  def logged_in?
    false
  end

  def visitor?
    true
  end

  def authenticate(password)
    false
  end

end
