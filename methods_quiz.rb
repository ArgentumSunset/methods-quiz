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

	def two_as_one?(int1,int2,int3)
		sum1 = int1 + int2
		sum2 = int1 + int3
		sum3 = int2 + int3
		if(sum1 == int3 || sum2 == int2 || sum3 == int1)
			true
		else
			false
		end
	end

def pig_latinify(str)
	str = str.strip
	str = str.downcase
	if(str == 'fuck' || str == 'shit' || str == 'crap' || str == 'damn' || str == "ass" || str == "asshole")
		str = str.gsub(/[aeiou]/, "*")
		str
	elsif(str[0] == 'a' || str[0] == 'i' || str[0] == 'e' || str[0] == 'u' || str[0] == 'o')
		str = str + 'way'
		str
	else
		first = str[0]
		str[0] = ''
		str = str + first + 'ay'
		str
	end
end

end