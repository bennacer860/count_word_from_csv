class CsvCounter

	def initialize
		
	end

	def generate_csv_file(size)
		
	end


	def generate_words
		alphabet= %w[a b c w r t y u u i o p a s d f g h j k l m n b]
		alphabet_size=alphabet.size
		word_size= Random.rand(6)+2
		word=word_size.times.map{ alphabet[ Random.rand(alphabet_size)+1 ] }
		return word.join("")
	end



end


puts CsvCounter.new.generate_words