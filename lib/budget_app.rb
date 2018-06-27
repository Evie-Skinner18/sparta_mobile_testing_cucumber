#the dot tells it to start looking specifically in current directory
require_relative './pages/homepage'


module BudgetApp

  #open the door to the Homepage class
  def homepage
    #making the driver available everywhere instead of creating an instance of it. I think.
    Homepage.new($driver)
  end

  #open the door to the class




end #end of module
