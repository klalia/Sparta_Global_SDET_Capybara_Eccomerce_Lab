require_relative 'pages/eccomerce_homepage'
require_relative 'pages/eccomerce_sign_in_page'
require_relative 'pages/eccomerce_account_page'
require_relative 'pages/eccomerce_tshirts_page'
require_relative 'pages/eccomerce_product_page'
require_relative 'pages/eccomerce_summary_page'
require_relative 'pages/eccomerce_address_page'
require_relative 'pages/eccomerce_shipping_page'
require_relative 'pages/eccomerce_payment_page'
require_relative 'pages/eccomerce_order_confirmation_page'
require_relative 'pages/eccomerce_order_complete_page'

class EccomerceSite

  def eccomerce_homepage
    EccomerceHomepage.new
  end

  def eccomerce_sign_in_page
    EccomerceSignInPage.new
  end

  def eccomerce_account_page
    EccomerceAccountPage.new
  end

  def eccomerce_tshirts_page
    EccomerceTshirtPage.new
  end

  def eccomerce_product_page
    EccomerceProductPage.new
  end

  def eccomerce_summary_page
    EccomerceSummaryPage.new
  end

  def eccomerce_address_page
    EccomerceAddressPage.new
  end

  def eccomerce_shipping_page
    EccomerceShippingPage.new
  end

  def eccomerce_payment_page
    EccomercePaymentPage.new
  end

  def eccomerce_order_confirmation_page
    EccomerceOrderConfirmationPage.new
  end

  def eccomerce_order_complete_page
    EccomerceOrderCompletePage.new
  end

end
