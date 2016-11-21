When(/^I click to the ladies outerwear$/) do
  homepage.ladies_outerwear_link.click
  ladies_outerwear_page.wait_for_page_to_load
end

Then(/^the available ladies clothing is listed for me$/) do
  expect(ladies_outerwear_page.items_list.size).to eq(ladies_outerwear_page.total_items)
  ladies_outerwear_page.items_list.each_with_index do |item, index|
    expect(item.div.text.to_s).to eq(ladies_outerwear_page.item_titles[index])
  end
end
