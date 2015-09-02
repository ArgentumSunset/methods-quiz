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
	
	def not_string(str)
		first = str[0..2]
		if(first == "not")
			str
		else
			"not " + str
		end
	end
	
	def icy_hot?(temp1,temp2)
		if(temp1 < 0)
			if(temp2 > 100)
				true
			else
				false
			end
		elsif(temp1 > 100)
			if(temp2 < 0)
				true
			else
				false
			end
		else
			false
		end
	end
	
	def closer_to(target,guess1,guess2)
		diff1 = (target - guess1).abs
		diff2 = (target - guess2).abs
		if(diff1 > diff2)
			guess2
		elsif(diff2 > diff1)
			guess1
		else
			0
		end
	end

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end