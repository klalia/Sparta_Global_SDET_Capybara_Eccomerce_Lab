require 'capybara/dsl'

class EccomerceAccountPage

  include Capybara::DSL

  HOMEPAGE = 'http://automationpractice.com/index.php?controller=my-account'
  TSHIRT_LINK = 'http://automationpractice.com/index.php?id_category=5&controller=category'

  def visit_homepage
    visit(HOMEPAGE)
  end

  def current_url
    page.current_url
  end

  def click_tshirt_button
    visit(TSHIRT_LINK)
  end

end
