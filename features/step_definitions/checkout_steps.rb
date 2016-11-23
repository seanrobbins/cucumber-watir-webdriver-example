Given(/^I have some items in my basket$/) do
  ladies_outerwear_page.visit
  ladies_outerwear_page.items_list[1].click

  item_page.wait_for_page_to_load
  expect(item_page.heading.text).to eq(ladies_outerwear_page.item_titles[1]) 
  item_page.add_to_cart_button.click
  item_page.header_cart.item_added? 
  
  mens_tshirt_page.visit
  mens_tshirt_page.items_list[1].click
  
  item_page.wait_for_page_to_load 
  expect(item_page.heading.text).to eq(mens_tshirt_page.item_titles[1])
  item_page.add_to_cart_button.click
  item_page.header_cart.item_added? 
end

Then(/^I can successfully checkout$/) do
  shop_cart_modal.wait_until_present
  shop_cart_modal.checkout_link.click
 
  checkout_page.wait_for_page_to_load 
  checkout_page.submit_delivery_and_payment_details

  confirmation_page.wait_for_page_to_load
  expect(@browser.url).to eq(confirmation_page.url)
end
