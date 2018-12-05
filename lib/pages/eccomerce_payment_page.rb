require 'capybara/dsl'

class EccomercePaymentPage

  include Capybara::DSL

  def click_pay_by_bankwire_button
    find("a[title='Pay by bank wire']").click
  end

  def current_url
    page.current_url
  end

end
