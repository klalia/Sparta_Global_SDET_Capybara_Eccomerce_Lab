require 'capybara/dsl'

class EccomerceProductPage

  include Capybara::DSL

  ADD_TO_CART_BUTTON = '#add_to_cart'

  def click_add_to_cart_button
    find(ADD_TO_CART_BUTTON).click
  end

  def click_proceed_to_checkout_link
    find("a[title='Proceed to checkout']").click
  end

  def current_url
    page.current_url
  end

end
