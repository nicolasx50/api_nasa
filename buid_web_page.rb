require_relative './components.rb'

web_page = template()

File.write('./index.html', web_page)