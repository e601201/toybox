require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://api.notion.com/v1/pages/自分のデータベースID")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["Notion-Version"] = '2022-06-28'
request["Authorization"] = 'Bearer 自分のベアラートークン'

response = http.request(request)
puts response.read_body