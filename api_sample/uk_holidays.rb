require 'uri'
require "net/http"
require "json"

holiday_info = Net::HTTP.get(URI.parse('https://www.gov.uk/bank-holidays.json'))
holiday_info_by_hash = JSON.parse(holiday_info)

puts "表示される地方は"
holiday_info_by_hash.keys.each do |holiday|
  puts holiday
end
puts "の#{holiday_info_by_hash.keys.count}つです"

puts "スコットランドの情報です"
scotland_events = holiday_info_by_hash["scotland"]["events"]
i = 0
scotland_events.map do |t|
    if t["date"] > "2022-01-01" &&  t["date"] < "2023-01-01"
      puts t["date"],t["title"]
      i += 1
    end
end
puts "今年度のスコットランドの祝日は#{i}日です"