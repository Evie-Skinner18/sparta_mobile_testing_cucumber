require 'appium_lib'
require 'cucumber'
#require the superclass or module
require_relative '../../lib/budget_app'


#options must be in right format. It will sometimes break!
#IT was originaly failing because it had no driver
# sice we didn't config the driver properly
def opts
  {
    caps: {
      platformName: 'Android',
      deviceName: 'emulator5554',
      app: './app/budgetwatch.apk'
    }
  }
end

Appium::Driver.new(opts, true)
World(BudgetApp)
