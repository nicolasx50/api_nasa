require "uri"
require "net/http"
require "openssl"
require "json"

def request("http://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY")
    url = URI("http://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(url)
    request ["cache-control"] = 'no-cache'

    response = http.request(request)
    body = JSON.parse response.read_body
    body.each do |photos|
        puts photos['']
end
