stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Add "Edinburgh Waverley" to the end of the array
stops.push("Edinburgh")

# Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen St")

# Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4, "Polmont")

# Work out the index position of "Linlithgow"
p stops.index("Linlithgow")

# Remove "Livingston" from the array using its name
stops.delete("Livingston")

# Delete "Cumbernauld" from the array by index
stops.delete_at(2)

# How many stops there are in the array?
p stops.length

# How many ways can we return "Falkirk High" from the array?
p stops[2]

# Reverse the positions of the stops in the array
p stops.reverse

# Print out all the stops using a for loop
for stop in stops
  p stop
end


users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }


#   Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users["Jonathan"][:twitter]

# Get Erik's hometown
p users ["Erik"][:home_town]

# Get the array of Erik's favourite numbers
p users ["Avril"] [:favourite_numbers]

# Get the type of Avril's pet Colin
p users ["Avril"][:pets]

# Get the smallest of Erik's favourite numbers
p users ["Erik"] [:favourite_numbers].min

# Add the number 7 to Erik's favourite numbers
fave_numbers = users ["Erik"] [:favourite_numbers].push(7)
p users ["Erik"] [:favourite_numbers]


# Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
p users ["Erik"][:home_town]

# Add a pet dog to Erik called "Fluffy"
p users["Erik"][:pets].merge("Fluffy" => :dog)

# # Add yourself to the users hash
p users["Ryan"] = {
  :twitter => "ivorydome",
  :favourite_numbers => [7, 11, 77],
  :home_town => "Edinburgh",
  :pets => {
    "Kasper" => :dog
  }
}

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]
# Change the capital of Wales from "Swansea" to "Cardiff".
united_kingdom[1][:capital] = "Cardiff"


# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
northern_ireland = {
  name: "Northern Ireland",
  population: 1800000,
  capital: "Belfast"
}

united_kingdom.push(northern_ireland)

# # Use a loop to print the names of all the countries in the UK.

for country in united_kingdom
  p country[:name]
end

# Use a loop to find the total population of the UK.

def count_population_of_uk(collection_of_countries)
  total_population = 0
  for country in collection_of_countries
    total_population += country[:population]
  end
  return total_population
end

total_population =count_population_of_uk(united_kingdom)

p "Total population of the UK is " + total_population.to_s
