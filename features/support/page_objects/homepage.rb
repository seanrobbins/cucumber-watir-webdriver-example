require_relative 'page'

class Homepage < Page
  def initialize(browser)
    super
    @url = @base_url
    @expected_element = @browser.elements(:tag_name => "shop-app", :text => "SHOP")[0]
  end

  def mens_outerwear_link
    @browser.link(:href => "/list/mens_outerwear")
  end

  def ladies_outerwear_link
    @browser.link(:href => "/list/ladies_outerwear")
  end
end

def homepage
  @homepage ||= Homepage.new(@browser)
end
