Given("I can open the app") do
  mainpage.main_page_displayed?
end

When("click on budget") do
  mainpage.click_budget
end

Then("the budget page opens") do
  budget_mainpage.budget_page_displayed?
end

When("I enter a budget") do
  mainpage.click_budget
  budget_mainpage.add_budget
  add_budget_page.budget_name_value
end

And("save the budget") do
  add_budget_page.save_budget
end

Then("the budget is saved") do
  budget_mainpage.budget_display
end

And("can be seen on the homepage") do
  budget_mainpage.budget_display
end
