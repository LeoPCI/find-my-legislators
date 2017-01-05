require "csv"
require "sunlight/congress"

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

puts "What is your zipcode?"
zipcode = gets.chomp

legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

puts "your legislators are: "
legislators.each do |leg|
	puts "#{leg.first_name} #{leg.last_name} #{leg.website}"
end