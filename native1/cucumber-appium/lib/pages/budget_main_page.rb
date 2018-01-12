class BudgetPage

  BUDGET_PAGE = 'protect.budgetwatch:id/dateRange'
  BUDGET_ADD = 'protect.budgetwatch:id/action_add'
  BUDGET_DISPLAY = 'protect.budgetwatch:id/budgetName'

  def initialize(driver)
    @driver = driver
  end

  def budget_page_displayed?
    @driver.find_element(:id, BUDGET_PAGE).displayed?
  end

  def add_budget
    @driver.find_element(:id, BUDGET_ADD).click
  end

  def budget_display
    @driver.find_element(:id, BUDGET_DISPLAY)
  end

end
