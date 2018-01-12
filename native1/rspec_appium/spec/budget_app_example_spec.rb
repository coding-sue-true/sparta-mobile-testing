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

  end

  it "Should access the budget page" do

  end

  it "Should be able to add a budget" do

  end

end
