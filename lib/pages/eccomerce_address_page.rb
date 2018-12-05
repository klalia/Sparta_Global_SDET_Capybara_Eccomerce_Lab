require 'capybara/dsl'

class EccomerceAddressPage

  include Capybara::DSL

  def click_proceed_to_checkout
    find("button[name='processAddress']").click
  end

  def current_url
    page.current_url
  end

end
