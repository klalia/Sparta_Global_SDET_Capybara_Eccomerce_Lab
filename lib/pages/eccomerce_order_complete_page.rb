require 'capybara/dsl'

class EccomerceOrderCompletePage

  include Capybara::DSL

  def current_url
    page.current_url
  end

end
