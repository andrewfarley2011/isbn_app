
require 'sinatra'

get "/" do
	erb :index
end

post '/index' do
	size[] = params[:size]	
	sauce[] = params[:sauce]
	cheese[] = params[:cheese]
	meat[] = params[:meat]
	toppings[] = params[:toppings]     
redirect '/confirm?size=' + size[] + '&sauce=' + sauce[] + '&cheese=' + cheese[] + '&meat=' + meat[] + '&toppings=' + toppings[]   
end

get'/confirm' do
	size[] = params[:size]	
	sauce[] = params[:sauce]
	cheese[] = params[:cheese]
	meat[] = params[:meat]
	toppings[] = params[:toppings]  
erb :confirm, :locals => {size[]:size, }
end




