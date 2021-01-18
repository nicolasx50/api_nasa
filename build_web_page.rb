require_relative './request_nasa.rb'
require_relative './components.rb'

data = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=FIvhdQte8TVVHT9rHzfNTc6fhgvWIPROqsdpXXVd")['photos']
#key "FIvhdQte8TVVHT9rHzfNTc6fhgvWIPROqsdpXXVd"

content = component_html(data)

File.write('./index.html', content)
