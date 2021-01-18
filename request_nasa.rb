require "uri"
require "net/http"
require "openssl"
require "json"

def request(url)
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Get.new(url)
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request ["cache-control"] = 'no-cache'
    response = http.request(request)

   return JSON.parse(response.read_body)

end
