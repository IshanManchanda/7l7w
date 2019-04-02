num = rand(100)

puts 'Number Guesser'
puts 'Guess a value between 0 and 100:'
input = -1

until input == num
	print 'Guess: '
	input = gets.to_i

	puts 'Too low!' if input < num
	puts 'Too high!' if input > num
end

puts 'Bingo!'
