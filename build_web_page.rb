require_relative "./request_nasa.rb"
require "json"
require_relative './components.rb'


data = request("https://api.nasa.gov","FIvhdQte8TVVHT9rHzfNTc6fhgvWIPROqsdpXXVd")
#key "FIvhdQte8TVVHT9rHzfNTc6fhgvWIPROqsdpXXVd"

content = components(data)

File.write('./index.html', components)