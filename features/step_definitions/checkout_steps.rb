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
  @browser.link(:text => "Checkout").wait_until_present
  @browser.link(:text => "Checkout").click
  
  @browser.button(:value => "Place Order").wait_until_present 
  @browser.text_field(:id => "accountEmail").set "test@testing.com"
  @browser.text_field(:id => "accountPhone").set "0123456789"
  @browser.text_field(:id => "shipAddress").set "1 Test Place"
  @browser.text_field(:id => "shipCity").set "Testville"
  @browser.text_field(:id => "shipState").set "TN"
  @browser.text_field(:id => "shipZip").set "34567"
  @browser.select_list(:id => "shipCountry").select_value "US" 
  @browser.text_field(:id => "ccName").set "Mr T Tester"
  @browser.text_field(:id => "ccNumber").set "4111111111111111"
  @browser.select_list(:id => "ccExpMonth").select_value "01" 
  @browser.select_list(:id => "ccExpYear").select_value Time.now.year + 1
  @browser.text_field(:id => "ccCVV").set "111"
  @browser.button(:value => "Place Order").click 

  @browser.link(:text => "Finish").wait_until_present
  expect(@browser.url).to eq("https://shop.polymer-project.org/checkout/success")
end
