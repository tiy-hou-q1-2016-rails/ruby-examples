require 'csv'

shipments = []
CSV.foreach("planet_express_log.csv", headers: true) do |row|
  shipment = row.to_hash
  if shipment["Destination"] == "Earth"
    shipment["Pilot"] = "Fry"
  elsif shipment["Destination"] == "Mars"
    shipment["Pilot"] = "Amy"
  elsif shipment["Destination"] == "Uranus"
    shipment["Pilot"] = "Bender"
  else
    shipment["Pilot"] = "Leela"
  end
  shipments << shipment
end

# how much money did Fry make

def shipments_for_planet(shipments, planet_name)
  shipments.select do |shipment|
    shipment["Destination"] == planet_name
  end
end

def total_money_for_shipments(shipments)
  money = shipments.map do |shipment|
    shipment["Money"].to_i
  end
  money.reduce(:+)
end

def shipments_for_pilot(shipments, pilot_name)

  shipments.select do |shipment|
    shipment["Pilot"] == pilot_name
  end
end

# earth = shipments_for_planet(shipments, "Earth")
# puts total_money_for_shipments(shipments)

["Fry", "Amy", "Bender", "Leela"].each do |name|
  pilot_shipments = shipments_for_pilot(shipments, name)
  puts ""
  puts name
  puts "Total Money: #{total_money_for_shipments(pilot_shipments)}"
  puts "Bonus Money: #{total_money_for_shipments(pilot_shipments) * 0.10}"

end
