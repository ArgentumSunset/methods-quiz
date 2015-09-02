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

end
