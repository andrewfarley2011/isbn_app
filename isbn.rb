
def check_isbn(sample_isbn)

	sample_isbn.delete(' ')
	sample_isbn.delete('-')

	if sample_isbn.count == 10
		true

	elsif actual_isbn.count == 13
		true

	else
		false

	end

end