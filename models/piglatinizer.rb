class PigLatinizer
	attr_reader :user_input

	def piglatinize(user_input)
		vowels = 'AEIOUaeiou'
		user_input.split(" ").map do |word|
			if vowels.split("").include?(word[0])
				word + "way"
			else
				word.split(/([#{vowels}].*)/).reverse.join + "ay"
			end
		end.join(" ")
	end
end