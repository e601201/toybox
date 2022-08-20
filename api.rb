# require 'net/http'
# require 'uri'

# url = URI.parse('https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json') 
# res = Net::HTTP.get(url)

# p res

require 'net/http'
require 'uri'
require "json"

response = Net::HTTP.get(URI.parse('https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json'))
response.class #=> string
parse = JSON.parse(response)
parse.class #=> hash
p "発表者: #{parse['publishingOffice']}"
p "報告日時: #{parse['reportDatetime']}"
p "対象地域: #{parse['targetArea']}"
p "ヘッドライン: #{parse['headlineText']}"
p "詳細: #{parse['text']}"