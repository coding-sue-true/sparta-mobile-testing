require 'spec_helper'

describe 'Testing the budget app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "Should open the budget watch app" do
    find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?
  end

  it "Should have the budget option on the main landing page" do
    find_elements(:id, 'protect.budgetwatch:id/menu')[0].displayed?
    # expect(find_elements(:id, 'protect.budgetwatch:id/menu')[0].text).to eq 'Budgets'
    # find_elements(:xpath, '//android.widget.LinearLayout[1]')[0].displayed?
  end

  it "Should access the budget page" do
    scroll_to('Budgets').click
    find_elements(:id, 'protect.budgetwatch:id/action_add')[0].displayed?
    # find_elements(:xpath, '//android.widget.LinearLayout[1]')[0].click
  end

  it "Should be able to add a budget" do
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys('test')
    find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('500')
    find_element(:id, 'protect.budgetwatch:id/action_save').click
    expect(find_elements(:id, 'protect.budgetwatch:id/budgetName')[0].text).to eq("test")

  end

end
