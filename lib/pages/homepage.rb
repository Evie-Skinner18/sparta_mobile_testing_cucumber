
class Homepage

  #native page object model
  MORE_OPTIONS_BUTTON_ID = 'More options'
  BUDGET_BUTTON = 'protect.budgetwatch:id/menu'
  BUDGET_HEADER = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.view.ViewGroup/android.widget.TextView'
  ADD_BUDGET_BUTTON = 'protect.budgetwatch:id/action_add'
  EDIT_BUDGET_NAME_FIELD = 'protect.budgetwatch:id/budgetNameEdit'
  EDIT_BUDGET_VALUE_FIELD = 'protect.budgetwatch:id/valueEdit'
  SAVE_BUDGET_BUTTON = 'protect.budgetwatch:id/action_save'
  @budget_title_text = 'Cheese Budget'


  def initialize(driver)
    @driver = driver
  end

  def check_homepage_displayed?
    @driver.find_element(:id, MORE_OPTIONS_BUTTON_ID)
  end

  def click_budget
    @driver.find_element(:id, BUDGET_BUTTON).click
  end

  def check_budget_page_displayed?
    @driver.find_element(:xpath, BUDGET_HEADER).text
  end

  def enter_budget
    @driver.find_element(:id, ADD_BUDGET_BUTTON).click
    @driver.find_element(:id, EDIT_BUDGET_NAME_FIELD).send_keys('Cheese Budget')
    @driver.find_element(:id, EDIT_BUDGET_VALUE_FIELD).send_keys('50')
  end

  def save_budget
    @driver.find_element(:id, SAVE_BUDGET_BUTTON).click
  end

  def budget_on_homepage
    @driver.find_element(:xpath, 'hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout/android.widget.TextView').text
  end





end #end of class
