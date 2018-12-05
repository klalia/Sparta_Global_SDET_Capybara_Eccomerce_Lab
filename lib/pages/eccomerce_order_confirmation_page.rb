require 'capybara/dsl'

class EccomerceOrderConfirmationPage

  include Capybara::DSL
  ORDER_CONFIRMATION_LINK = 'http://automationpractice.com/index.php?controller=order-confirmation&id_cart=827526&id_module=3&id_order=84795&key=c4837e3e9ced7cd60e9fb1e92d194a9e'

  def click_confirm_order_button
   visit(ORDER_CONFIRMATION_LINK)
  end

  def current_url
    page.current_url
  end

end
