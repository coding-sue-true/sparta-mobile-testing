require 'appium_lib'
require 'cucumber'
require_relative '../../lib/budget_app'

def opts
  {
    caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a04/engineering/sparta-mobile-testing/native1/app/budgetwatch.apk"
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)
