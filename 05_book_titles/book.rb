class Book

	attr_accessor :title

	def title
		lowercase_words = ["and", "in", "the", "of", "a", "an"]
		words = @title.split
		words[0].capitalize
		words.each_with_index do |w, i|
			if lowercase_words.include? w and i != 0
				w.downcase!
			else
				w.capitalize!
			end
		end
		@title = words.join(' ')
	end

end
