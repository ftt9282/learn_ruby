def echo(phrase)
	return phrase
end

def shout(phrase)
	return phrase.upcase
end

def repeat(phrase, *repeated)
	sentence = [phrase, phrase]
	if repeated.length > 0
		(repeated.pop-2).times do
			sentence.push(phrase)
		end
	end
	return sentence.join(' ')
end

def start_of_word(phrase, letter)
	return phrase[0, letter]
end

def first_word(phrase)
	word_array = phrase.split
	return word_array[0]
end

def titleize(phrase)
	new_array = []
	word_array = phrase.split
	new_array.push(word_array.shift.capitalize)
	word_array.each do |word|
		if (word == "and" || word == "the" || word == "over")		    # lazy as fuck... sorry...
			new_array.push(word)
		else
			new_array.push(word.capitalize)
		end
	end
	return new_array.join(' ')
end