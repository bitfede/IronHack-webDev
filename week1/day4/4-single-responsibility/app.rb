#app.rb

require_relative("lib/App.rb")
require_relative("lib/Text.rb")

application = App.new

#application.askCredentials

textprocessor = Text.new

textprocessor.getInput