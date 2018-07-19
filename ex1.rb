trains = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

puts train111_direcction = trains.last[:direction]
puts train80b_frequency = trains[-3][:frequency_in_minutes]
puts train611_direction = trains[3][:direction]

north_trains = []
east_trains = []
trains.each do |train|
  if train[:direction] == "north"
    north_trains.push(train[:train])
  elsif train[:direction] == "east"
    east_trains.push(train[:train])
  end
end
puts "North trains: #{north_trains}"
puts "East trains: #{east_trains}"
puts "\n\n"

# refactored code into a generic method
def trains_direction(trains, direction)
  trains_list = []
  trains.each do |train|
    if train[:direction] == direction
      trains_list.push(train[:train])
    end
  end
  return trains_list
end

puts "North Trains: #{trains_direction(trains, "north")}"
puts "East Trains: #{trains_direction(trains, "east")}"

trains[0][:first_departure_time] = 6
puts trains
