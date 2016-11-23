require_relative './page'

class ConfirmationPage < Page
  def initialize(browser)
    super(browser)
    @url = @base_url + "checkout/success"
    @expected_element = finish_link
  end

  def finish_link
    @browser.link(:text => "Finish")
  end
end

def confirmation_page
  @confirmation_page ||= ConfirmationPage.new(@browser)
end
