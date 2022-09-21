# frozen_string_literal: true

puts 'Event Manager Initialized!'

# contents = File.read('event_attendees.csv')
# puts contents

lines = File.readlines('event_attendees.csv')
lines.each_with_index do |line, index|
  # Skip the header line
  next if index.zero?

  # Print attendees' first names
  puts line.split(',')[2]
end
