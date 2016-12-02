def translate(words)
	vowels = ['a','e','i','o','u']
	full_sentence = []
	
	words.split.each do |word|
		consonants = []
		word_array = word.split('')
		word_array.each do |letter|
			if vowels.include? word_array[0]
				break
			elsif word_array[0].to_s + word_array[1].to_s == "qu"
				2.times do consonants.push(word_array.shift) end								
			else
				consonants.push(word_array.shift)
			end
		end
		full_sentence.push(word_array.join + consonants.join + "ay")
	end
	return full_sentence.join(" ")
end

puts translate("I am quick")