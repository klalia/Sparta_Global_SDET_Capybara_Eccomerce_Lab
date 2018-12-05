require 'capybara/dsl'

class EccomerceShippingPage

  include Capybara::DSL

  TICK_BOX = '#cgv'

  def click_terms_box
    find(TICK_BOX).click
  end

  def click_proceed_to_checkout
    find("button[name='processCarrier']").click
  end

  def current_url
    page.current_url
  end

end
