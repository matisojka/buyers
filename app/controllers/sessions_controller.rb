class SessionsController < ApplicationController

  def new
    @session = Session.new
  end

  def create
    authenticator = Buyer::Authenticator.new(email: email, password: password)

    if (buyer = authenticator.call)
      self.current_user = buyer
      redirect_to products_path
    else
      @session = Session.new
      flash.now[:error] = 'Wrong username or password'
      render 'new'
    end
  end

  private

  def email
    session_params_for_create[:email]
  end

  def password
    session_params_for_create[:password]
  end

  def session_params_for_create
    @session_params_for_create ||= params.require(:session).permit(:email, :password)
  end

end

