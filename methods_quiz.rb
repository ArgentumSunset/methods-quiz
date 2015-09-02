module MethodsQuiz
	
	def has_teen?(ints)
		first = ints.shift
		second = ints.shift
		third = ints.shift
		if((first < 20 && first > 12)||(second < 20 && second > 12)||(third < 20 && third > 12))
			true
		else
			false
		end
	end
	
	# TODO - write not_string
	
	# TODO - write icy_hot?
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end