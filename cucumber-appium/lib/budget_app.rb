require_relative 'pages/main_page'
require_relative 'pages/add_budget_page'
require_relative 'pages/budget_main_page'

module BudgetApp

  def mainpage
    MainPage.new($driver)
  end

  def budget_mainpage
    BudgetPage.new($driver)
  end

  def add_budget_page
    AddBudgetPage.new($driver)
  end

end
