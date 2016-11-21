When(/^I click to the men's outerwear$/) do
  homepage.mens_outerwear_link.click
  mens_outerwear_page.wait_for_page_to_load
end

Then(/^the available men's clothing is listed for me$/) do
  expect(mens_outerwear_page.items_list.size).to eq(mens_outerwear_page.total_items)
  mens_outerwear_page.items_list.each_with_index do |item, index|
    expect(item.div.text.to_s).to eq(mens_outerwear_page.item_titles[index])
  end
end
