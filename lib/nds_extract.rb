$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  arr = []
  x = 0 
  while x < source.length do 
    arr.push(source[x][:name])
    x += 1
  end
  return arr
end

def total_gross(source)
  result = {}
  sum = 0
  x = 0 
  while x < source.length do
    y = 0
    while y < source[x][:movies].length do
      sum += source[x][:movies][y][:worldwide_gross]
      y+= 1
    end
    x += 1
  end
  return sum
end


