require 'capybara/dsl'

class EccomerceTshirtPage

  include Capybara::DSL

  HOMEPAGE = 'http://automationpractice.com/index.php?id_category=5&controller=category'
  TSHIRT_LINK = 'http://automationpractice.com/index.php?id_product=1&controller=product'

  def visit_homepage
    visit(HOMEPAGE)
  end

  def current_url
    page.current_url
  end

  def click_tshirt_image
    visit(TSHIRT_LINK)
  end

end
