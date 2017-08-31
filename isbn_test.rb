

# require "minitest/autorun" 
# require_relative "isbn.rb" 
# class TestISBN < Minitest::Test  

# 	def test_one_equals_one 
# 		assert_equal(1,1) 
# 	end 
 							 
# 	def test_length_true			 
#  		assert_equal(true, check_isbn("1234567890"))
#  	end	  
  		
#   	def test_length_false
#   		assert_equal(false, check_isbn("12345678910"))
#   	end	

#   	def test_with_dashes_and_spaces
#   		assert_equal(true, check_isbn("123 4 5 6---7890"))
#   	end

# end 


require "minitest/autorun"
require_relative "isbn.rb"

class TestISBN_Machine < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_length_equals_six_fails
		assert_equal(false,check_isbn_length("123456"))
	end

	def test_length_equals_ten_passes
		assert_equal(true,check_isbn_length("1234567891"))
	end

	def test_removes_dashes_length
		assert_equal(true,check_isbn_length("123456789-1"))
	end

	def test_removes_spaces_length
		assert_equal(true,check_isbn_length("123 123 123 4"))
	end

	def test_removes_spaces_and_hyphens
		assert_equal("1234567891",clean_isbn("123 456 789-1"))
	end

	def test_checks_last_digit_for_ten_true
		assert_equal(true,check_if_last_num_passes("123456789X"))
	end

	def test_checks_last_digit_for_ten_false
		assert_equal(false,check_if_last_num_passes("1234567894"))
	end

	def test_checks_last_digit_for_thirteen_true
		assert_equal(true,check_if_last_num_passes("9780306406157"))
	end

	def test_checks_last_digit_for_thirteen_true_take_two
		assert_equal(true,check_if_last_num_passes("9780471486480"))
	end

	def test_checks_last_digit_for_thirteen_false
		assert_equal(false,check_if_last_num_passes("4780470059029"))
	end

	def test_checks_complete_function_length_fails
		assert_equal(false,complete_isbn_function("12345"))
	end

	def test_checks_complete_function_ten_true
		assert_equal(true,complete_isbn_function("123456789X"))
	end

	def test_checks_complete_function_ten_false
		assert_equal(false,complete_isbn_function("1234567894"))
	end

	def test_checks_complete_function_thirteen_true
		assert_equal(true,complete_isbn_function("9780471486480"))
	end

	def test_checks_complete_function_thirteen_false
		assert_equal(false,complete_isbn_function("4780470059029"))
	end

	def test_checks_complete_function_removes_spaces
		assert_equal(true,complete_isbn_function("12 3456 789 X"))
	end

	def test_checks_complete_function_removes_dashes
		assert_equal(true,complete_isbn_function("12-3456-789-X"))
	end

end
