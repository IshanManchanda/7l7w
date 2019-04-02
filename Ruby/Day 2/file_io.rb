input = ''

File.open('file_io_input.txt', 'r') do |in_file|
	input = in_file.sysread 20
end

File.open('file_io_output.txt', 'r+') do |out_file|
	if out_file
		out_file.syswrite(input)
	else
		puts 'Unable to write!'
	end
end
