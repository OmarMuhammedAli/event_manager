# frozen_string_literal: true

require 'csv'
puts 'Event Manager Initialized!'

# contents = File.read('event_attendees.csv')
# puts contents

lines = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)
lines.each do |row|
  # Print attendees' first names
  name = row[:first_name]
  puts name
end
