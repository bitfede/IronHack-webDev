# app.rb

require_relative("lib/Caffeine_consumer.rb")
require_relative("lib/Designer.rb")
require_relative("lib/Programmer.rb")
require_relative("lib/Payable.rb")
require_relative("lib/CompanyOwner.rb")
require_relative("lib/SalaryPay.rb")

the_designer = Designer.new
the_designer.design_things

puts 

the_programmer = Programmer.new
the_programmer.program
