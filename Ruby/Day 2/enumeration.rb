a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2]

a.each_slice(4) do |x|
	puts x.join(' ')
end