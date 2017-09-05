
require 'sinatra'
require_relative 'isbn.rb'

get '/' do
	erb :index
end

post '/index' do
	ten = params[:ten_digit]
	thirteen = params[:thirteen_digit]
	isbn_number = params[:isbn_number]
	isbn_func = complete_isbn_function(isbn_input)
	redirect '/confirm?isbn_input=' + isbn_input + '&isbn_func=' + isbn_func + '&ten_digit=' + ten + '&thirteen_digit=' + thirteen
end

get '/confirm' do
	isbn_input = params[:isbn_input]
	isbn_func = params[:isbn_func]
	result_statement = isbn_results(isbn_func)
	erb :the_end, locals: {isbn_input: isbn_input, isbn_func: isbn_func, result_statement: result_statement}
end

post '/confirm' do
	isbn_input = params[:isbn_input]
	isbn_func = params[:isbn_func]
	result_statement = params[:result_statement]
end




