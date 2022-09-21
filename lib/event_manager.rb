# frozen_string_literal: true

require 'csv'
puts 'Event Manager Initialized!'

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, '0')[0..4]
end

lines = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)
lines.each do |row|
  # Print attendees' first names
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end
