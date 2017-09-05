
def check_isbn_length(sample_isbn)

	sample_isbn.delete(' ')
	sample_isbn.delete('-')

	if sample_isbn.length == 10
		true

	elsif sample_isbn.length == 13
		true

	else
		false

	end

end

def numbers_only(number)

	if number !~ /\D/
		true

	elsif number.chop !~ /\D/
		true

	else
		false

	end

end

def clean_isbn(sample_isbn_2)

	sample_isbn_2 = sample_isbn_2.delete(' ')
	sample_isbn_2 = sample_isbn_2.delete('-')
	result_sample_isbn_2 = sample_isbn_2

end


def check_if_last_num_passes(cleaned_isbn)

		math_array = []

	if cleaned_isbn.length == 10

		array_isbn = cleaned_isbn.split('')

		last_position_isbn = array_isbn.pop

		array_isbn.each.with_index do |var, index|
			mult = var.to_f * (index.to_f + 1)
			math_array << mult

		end

		math_array_sum = math_array.inject(0, :+)

		math_array_mod = math_array_sum % 11

		if math_array_mod <= 9
			math_array_mod

		elsif math_array_mod ==10
			math_array_mod = "X"

		else
			false

		end

		if math_array_mod == last_position_isbn
			true

		else
			false

		end

	elsif cleaned_isbn.length == 13

		array_isbn = cleaned_isbn.split('')

		last_position_isbn = array_isbn.pop

		array_isbn.each.with_index do |var, index|

			if (index + 1) % 2 == 0
				mult = var.to_f * 3
				math_array << mult

			else
				mult = var.to_i
				math_array << mult

			end

		end

		math_array_sum = math_array.inject(0, :+)

		math_array_mod_one = 10 - (math_array_sum % 10)

		math_array_mod = math_array_mod_one % 10

		if math_array_mod == last_position_isbn.to_i
			true

		else
			false

		end

	end

end

def complete_isbn_function(input_isbn)

	input_isbn = input_isbn.delete(' ')
	input_isbn = input_isbn.delete('-')
	math_array = []

	if input_isbn.length == 10

		array_isbn = input_isbn.split('')

		last_position_isbn = array_isbn.pop

		array_isbn.each.with_index do |var, index|

			mult = var.to_f * (index.to_f + 1)
			math_array << mult

		end

		math_array_sum = math_array.inject(0, :+)

		math_array_mod = math_array_sum % 11

		if math_array_mod <= 9
			math_array_mod

		elsif math_array_mod ==10
			math_array_mod = "X"

		else
			returnvar = "false"

		end

		if math_array_mod == last_position_isbn
			returnvar = "true"

		else
			returnvar = "false"

		end

	elsif input_isbn.length == 13

		array_isbn = input_isbn.split('')
		last_position_isbn = array_isbn.pop
		array_isbn.each.with_index do |var, index|

			if (index + 1) % 2 == 0
				mult = var.to_f * 3
				math_array << mult

			else
				mult = var.to_i
				math_array << mult

			end

		end

		math_array_sum = math_array.inject(0, :+)

		math_array_mod_one = 10 - (math_array_sum % 10)

		math_array_mod = math_array_mod_one % 10

		if math_array_mod == last_position_isbn.to_i
			returnvar = "true"

		else
			returnvar = "false"

		end

	else
		returnvar = "false"

	end

	returnvar

end

def isbn_results(complete_function_results)

	if complete_function_results == "true"
		answer = "Excellent, <%=isbn_input%> is valid."

	else
		answer = "Sorry, <%=isbn_input%> is invalid."

	end

	answer

end