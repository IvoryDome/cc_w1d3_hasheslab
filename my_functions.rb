
prices = [ 1.23, 6.98, 8.43, 2.45]
costs = [ 4.23, 1.12, 0.52, 8.67]

def add_array_lengths(array1, array2)
total_array_length = array1.length + array2.length
end

puts add_array_lengths(prices, costs)

data = [1, 2, 3, 4, 5]

def sum_array(array)
  total_sum_of_array = 0
  for num in array
    total_sum_of_array += num
end
puts total_sum_of_array
end

puts sum_array(data)

hogwarts = ["Hufflepuff", "Slytherin", "Gryffindor", "Ravenclaw"]

def find_item(array, item)
    array.include? item
end

p find_item(hogwarts, "Slytherin")

teacher_wallets = {
  'Sandy' => 12,
  'Zsolt' => 10,
  'Val' => 1356,
  'Jay' => 1
}

def get_first_key(hash)
  return hash.keys[0]
end

p get_first_key(teacher_wallets)

countries = {
  uk: {
    capital: 'London',
    population: 60
  },
  france: {
    capital: 'Paris',
    population: 70
  },
  italy: {
    capital: 'Rome',
    population: 56
  }
}


def array_of_capitals(hash_with_countries)
    capitals_array = []
    hash_with_countries.each do |key, value|
    country_data = value
    capital = country_data[:capital]
    capitals_array.push(capital)
  end
    return capitals_array
end

p array_of_capitals(countries)
