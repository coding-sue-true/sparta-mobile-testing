class MainPage

  BUDGET_AND_TRANSACTION = 'protect.budgetwatch:id/action_settings'
  BUDGET_CLICK = 'Budgets'
  BUDGET_PAGE = 'protect.budgetwatch:id/dateRange'
  BUDGET_ADD = 'protect.budgetwatch:id/action_add'
  BUDGET_FIELD_NAME = 'protect.budgetwatch:id/budgetNameEdit'
  BUDGET_FIELD_VALUE = 'protect.budgetwatch:id/valueEdit'
  BUDGET_SAVE = 'protect.budgetwatch:id/action_save'
  BUDGET_DISPLAY = 'protect.budgetwatch:id/budgetName'

  def initialize(driver)
    @driver = driver
  end

  def main_page_displayed?
    @driver.find_element(:id, BUDGET_AND_TRANSACTION)
  end

  def click_budget
    @driver.scroll_to(BUDGET_CLICK).click
  end

  def budget_page_displayed?
    @driver.find_element(:id, BUDGET_PAGE).displayed?
  end

  def add_budget
    @driver.find_element(:id, BUDGET_ADD).click
  end

  def budget_name_value
    @driver.find_element(:id, BUDGET_FIELD_NAME).send_keys('test')
    @driver.find_element(:id, BUDGET_FIELD_VALUE).send_keys('500')
  end

  def save_budget
    @driver.find_element(:id, BUDGET_SAVE).click
  end

  def budget_display
    @driver.find_element(:id, BUDGET_DISPLAY)
  end

end
