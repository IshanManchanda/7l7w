class CSVRow
	attr_accessor :dict

	def initialize(headers, row_contents)
		@dict = {}
		headers.each_index {|i|  @dict[headers[i]] = row_contents[i]}
	end

	def to_s
		@dict.inject("") {|string, (k, v)| string + "#{k}: #{v}, " }
	end

	def method_missing(name, *args)
		dict[name.to_s] if @dict.key? name.to_s
	end
end

class RubyCsv
	attr_accessor :headers, :csv_contents
	def initialize
		read
	end

	def read
		@csv_contents = []
		filename = 'csv.csv'
		file = File.new(filename)
		@headers = file.gets.chomp.split(', ')
		file.each do |row|
			@csv_contents << CSVRow.new(@headers, row.chomp.split(', '))
		end
	end

	def each
		csv_contents.each
	end
end


csv = RubyCsv.new
puts csv.headers.inspect
csv.csv_contents.each(&method(:puts))
csv.csv_contents.each {|x| puts x.header1 }
