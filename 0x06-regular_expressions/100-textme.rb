#!/usr/bin/env ruby
# 100-textme.rb

if ARGV.length != 1
  puts "Usage: ./100-textme.rb '<log_string>'"
  exit
end

log = ARGV[0]

sender = log.match(/\[from:(.*?)\]/)[1]
receiver = log.match(/\[to:(.*?)\]/)[1]
flags = log.match(/\[flags:(.*?)\]/)[1]

puts "#{sender},#{receiver},#{flags}"
