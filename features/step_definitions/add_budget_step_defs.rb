Given("I can open the app") do
  homepage.check_homepage_displayed?
end

When("click on budget") do
  homepage.click_budget
end

Then("the budget page opens") do
  homepage.check_budget_page_displayed?
end

When("I enter a budget") do
  homepage.click_budget
  homepage.enter_budget
end

And("save the budget") do
  homepage.save_budget
end

Then("can be seen on the homepage") do
  expect(homepage.budget_on_homepage).to eq('Cheese Budget')
end
