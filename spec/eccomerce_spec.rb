require 'spec_helper'

describe 'A user should be able to sign in and buy a product' do

  before(:all) do
    @eccomerce_site = EccomerceSite.new
  end

  context 'A user should be able to go to the sign in page' do

    it "should load the homepage" do
      @eccomerce_site.eccomerce_homepage.visit_homepage
      expect(@eccomerce_site.eccomerce_homepage.current_url).to eq 'http://automationpractice.com/index.php'
    end

    it "should go onto the sign in page when the button is clicked" do
      @eccomerce_site.eccomerce_homepage.click_sign_in_link
      expect(@eccomerce_site.eccomerce_sign_in_page.current_url).to eq 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
    end

  end

  context 'A user should be able to sign in on the sign in page' do

    it "should be able to enter the email" do
      @eccomerce_site.eccomerce_sign_in_page.input_user_email_field
      expect(@eccomerce_site.eccomerce_sign_in_page.get_user_email_value).to eq 'a@hotmail.com'
    end

    it "should be able to enter the password" do
      @eccomerce_site.eccomerce_sign_in_page.input_user_password_field
      expect(@eccomerce_site.eccomerce_sign_in_page.get_user_password_value).to eq 'hello'
    end

    it "should be able to sign the user in once the sign in button is clicked" do
      @eccomerce_site.eccomerce_sign_in_page.click_sign_in_button
      expect(@eccomerce_site.eccomerce_account_page.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
    end

  end

  context 'A user should be able to go to the t-shirt page' do

    it "should be able to click on the t-shirts page" do
      @eccomerce_site.eccomerce_account_page.click_tshirt_button
      expect(@eccomerce_site.eccomerce_tshirts_page.current_url).to eq 'http://automationpractice.com/index.php?id_category=5&controller=category'
    end

  end

  context 'A user should be able to click on the t-shirt' do

    it "should be able to click on the t-shirt to view more" do
      @eccomerce_site.eccomerce_tshirts_page.click_tshirt_image
      expect(@eccomerce_site.eccomerce_product_page.current_url).to eq 'http://automationpractice.com/index.php?id_product=1&controller=product'
    end

  end

  context 'A user should be able to add the item to the cart and proceed to the checkout' do

    it "should be able to click on the add to cart button and proceed to checkout" do
      @eccomerce_site.eccomerce_product_page.click_add_to_cart_button
      @eccomerce_site.eccomerce_product_page.click_proceed_to_checkout_link
      expect(@eccomerce_site.eccomerce_summary_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order'
    end

  end

  context 'A user should be able to proceed to checkout once the item has been added' do

    it "should be able to proceed to checkout once the item has been added to the cart" do
      @eccomerce_site.eccomerce_summary_page.click_proceed_to_checkout_button
      expect(@eccomerce_site.eccomerce_address_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order&step=1'
    end

  end

  context 'A user should be able to proceed to the address page' do

    it "should be able to continue through the checkout process" do
      @eccomerce_site.eccomerce_address_page.click_proceed_to_checkout
      expect(@eccomerce_site.eccomerce_shipping_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order'
    end

  end

  context 'A user should be able to go to the shipping page and click the terms' do

    it "should be able to click the terms and conditions and continue to proceed to the checkout" do
      @eccomerce_site.eccomerce_shipping_page.click_terms_box
      @eccomerce_site.eccomerce_shipping_page.click_proceed_to_checkout
      expect(@eccomerce_site.eccomerce_payment_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order&multi-shipping='
    end

  end

  context 'A user should be able to go to the payment page and click by bank wire' do

    it "should be able to click pay by bank wire" do
      @eccomerce_site.eccomerce_payment_page.click_pay_by_bankwire_button
      expect(@eccomerce_site.eccomerce_order_confirmation_page.current_url).to eq 'http://automationpractice.com/index.php?fc=module&module=bankwire&controller=payment'
    end

  end

  context 'A user should be able to confirm there order' do

    it "should be able to confirm the order by clicking the button" do
      @eccomerce_site.eccomerce_order_confirmation_page.click_confirm_order_button
      expect(@eccomerce_site.eccomerce_order_complete_page.current_url).to eq 'http://automationpractice.com/index.php?controller=order-confirmation&id_cart=827526&id_module=3&id_order=84795&key=c4837e3e9ced7cd60e9fb1e92d194a9e'
    end

  end

  # after(:each) do
  #   sleep 2
  # end

end
