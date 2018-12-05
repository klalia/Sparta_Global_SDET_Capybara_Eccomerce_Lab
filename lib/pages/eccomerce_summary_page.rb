require 'capybara/dsl'

class EccomerceSummaryPage

  include Capybara::DSL

  PROCEED_TO_CHECKOUT = 'http://automationpractice.com/index.php?controller=order&step=1'

  def click_proceed_to_checkout_button
    visit(PROCEED_TO_CHECKOUT)
  end

  def current_url
    page.current_url
  end

end
