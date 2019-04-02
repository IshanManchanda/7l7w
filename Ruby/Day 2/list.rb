list = [1, 3, 5, 6, 2, 32, 2, 8, 3, 4, 1, 2]

puts list.to_s

puts list.sort.to_s

puts list.any? {|x| x > 100}, list.all? {|x| x < 100}

# Get all even, odd numbers
puts list.select {|x| x % 2 == 0}.to_s, list.select {|x| x % 2 == 1}.to_s

puts list.max, list.min

# Find sum and product
puts list.inject(0) {|sum, x| sum + x}, list.inject(1) {|product, x| product * x}

puts list.inject(0) { |sum, x|
	puts "Running sum: #{sum}"
	puts "#{sum} + #{x} : #{sum + x}"
	sum + x
}
