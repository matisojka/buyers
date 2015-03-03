require 'rails_helper'

describe 'Buy spec' do

  context 'buyer is logged in' do

    let(:buyer) { create(:buyer) }

    def log_in
      visit root_path

      click_link 'I want to log in'
      fill_in 'session_email', with: buyer.email
      fill_in 'session_password', with: buyer.password

      click_button 'Log in'

      expect(page).to have_content(buyer.name)
    end

    it 'buys a product' do
      log_in

      expect(page).to have_content("#{buyer.credits} credits")

      product = Product.first
      within("#product_#{product.id}") do
        click_button 'Buy'
      end
      expect(page).to have_content("You got it!")

      new_credit_amount = buyer.credits - product.cheapest_price
      expect(page).to have_content(new_credit_amount)
    end

  end

end
