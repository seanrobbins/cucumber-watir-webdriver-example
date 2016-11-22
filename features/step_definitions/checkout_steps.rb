Given(/^I have some items in my basket$/) do
  ladies_outerwear_page.visit
  ladies_outerwear_page.items_list[1].click
  @browser.h1(:text => ladies_outerwear_page.item_titles[1]).wait_until_present
  @browser.button(:text => "Add to Cart").click 
  @browser.div(:class => "cart-badge", :text => "1").wait_until_present
  mens_tshirt_page.visit
  mens_tshirt_page.items_list[1].click
  @browser.h1(:text => mens_tshirt_page.item_titles[1]).wait_until_present
  @browser.button(:text => "Add to Cart").click 
  @browser.div(:class => "cart-badge", :text => "2").wait_until_present
end

Then(/^I can successfully checkout$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
