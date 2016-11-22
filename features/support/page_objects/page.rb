class Page
  attr_accessor :base_url, :url, :expected_element

  def initialize(browser)
    @base_url = "https://shop.polymer-project.org/"
    @browser = browser
  end

  def visit
   @browser.goto @url + "?dom=shady"
   wait_for_page_to_load
  end

  def wait_for_page_to_load
    @expected_element.wait_until_present
  end
end
