hash = {
	:key1 => 'value1',
	2 => 2,
	['key1', 'key2', 'key3'] => ['value1', 'value2', 'value3']
}

# Convert hash to array.
# key => value becomes index => [key, value]
list = []
hash.each do |key, value|
	list.append([key, value])
end
puts list.to_s

# Convert array to hash.
list = [1, 3, 5, 6, 2, 32, 2, 8, 3, 4, 1, 2]
hash = {}
list.each_with_index do |i, x|
  hash[i] = x
end
puts hash.to_s
