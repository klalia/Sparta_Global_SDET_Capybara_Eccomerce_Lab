require 'capybara/dsl'

class EccomerceSignInPage

  include Capybara::DSL

  SIGN_IN_PAGE_URL = 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  USER_EMAIL_ID = '#email'
  USER_PASSWORD_ID = '#passwd'
  SIGN_IN_BUTTON_ID = '#SubmitLogin'

  def visit_sign_in_page
    visit(SIGN_IN_PAGE_URL)
  end

  def current_url
    page.current_url
  end

  def input_user_email_field
    find(USER_EMAIL_ID).set('a@hotmail.com')
  end

  def get_user_email_value
    find(USER_EMAIL_ID).value
  end

  def input_user_password_field
    find(USER_PASSWORD_ID).set('hello')
  end

  def get_user_password_value
    find(USER_PASSWORD_ID).value
  end

  def click_sign_in_button
    find(SIGN_IN_BUTTON_ID).click
  end

end
