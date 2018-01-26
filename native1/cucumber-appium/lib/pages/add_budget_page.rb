class AddBudgetPage

  BUDGET_FIELD_NAME = 'protect.budgetwatch:id/budgetNameEdit'
  BUDGET_FIELD_VALUE = 'protect.budgetwatch:id/valueEdit'
  BUDGET_SAVE = 'protect.budgetwatch:id/action_save'

  def initialize(driver)
    @driver = driver
  end

  def budget_name_value
    @driver.find_element(:id, BUDGET_FIELD_NAME).send_keys('test')
    @driver.find_element(:id, BUDGET_FIELD_VALUE).send_keys('500')
  end

  def save_budget
    @driver.find_element(:id, BUDGET_SAVE).click
  end
end
