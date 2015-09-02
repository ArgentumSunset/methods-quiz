require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	def test_has_teen
		assert_equal true, @m.has_teen?([1,19,12])
		assert_equal true, @m.has_teen?([19,1,12])
		assert_equal true, @m.has_teen?([1,12,19])
		assert_equal false, @m.has_teen?([1,12,20])
	end

	def test_not_string
		assert_equal "not feasible", @m.not_string("feasible")
		assert_equal "not knowing you has been blissful", @m.not_string("knowing you has been blissful")
		assert_equal "not a trap, Admiral", @m.not_string("not a trap, Admiral")
	end

	def test_icy_hot
		assert_equal true, @m.icy_hot?(-53,105)
		assert_equal true, @m.icy_hot?(105,-53)
		assert_equal false, @m.icy_hot?(-53,-12)
		assert_equal false, @m.icy_hot?(105,119)
		assert_equal false, @m.icy_hot?(105,52)
		assert_equal false, @m.icy_hot?(-53,52)
		assert_equal false, @m.icy_hot?(18,52)
		assert_equal false, @m.icy_hot?(0,100)
	end

	def test_closer_to
		assert_equal 54, @m.closer_to(50,54,78)
		assert_equal 15, @m.closer_to(18,25,15)
		assert_equal -12, @m.closer_to(0,-12,13)
		assert_equal 13, @m.closer_to(12,13,74)
		assert_equal 0, @m.closer_to(25,30,20)
	end

	def test_two_as_one
		assert_equal true, @m.two_as_one?(5,6,11)
		assert_equal true, @m.two_as_one?(11,5,6)
		assert_equal true, @m.two_as_one?(5,11,6)
		assert_equal true, @m.two_as_one?(-1,5,-6)
		assert_equal false, @m.two_as_one?(5,5,23)
		assert_equal true, @m.two_as_one?(0,0,0)
	end

	def test_pig_latinify
		assert_equal "wiftsay", @m.pig_latinify('swift')
		assert_equal "empiricalway", @m.pig_latinify('empirical')
		assert_equal "ythonpay", @m.pig_latinify('PytHoN')
		assert_equal "avajay", @m.pig_latinify('Java  ')
		assert_equal "sh*t", @m.pig_latinify('shit')
		assert_equal "d*mn", @m.pig_latinify(' DaMN   ')
	end
end
