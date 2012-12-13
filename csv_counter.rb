class CsvCounter

	def initialize
		
	end

	def generate_csv_file(size,columns,words_number)
		f=File.new("output.out","a+")
		size.times do |line|
			line=[ ]
			columns.times do |column|
				words_number.times do |word|
					#print random_word
					line << random_word
					# print " " unless word+1 == words_number
					line << " " unless word+1 == words_number
				end	
				# print "," unless column+1 == columns
				line << "," unless column+1 == columns
			end
			# puts "\n"
			#line << "\n"
			#puts line.join("")
			f.puts line.join("")
			#clear line
			line =[ ]
		end
					
	end


	def random_word
		alphabet= %w[a b c w r t y u u i o p a s d f g h j k l m n b]
		alphabet_size=alphabet.size
		word_size= Random.rand(6)+2
		word=word_size.times.map{ alphabet[ Random.rand(alphabet_size)+1 ] }
		return word.join("")
	end



end


#puts CsvCounter.new.random_word
CsvCounter.new.generate_csv_file(100000000,2,4)