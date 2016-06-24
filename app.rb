require 'sinatra'

enable :sessions
#session[:turno] = "O"

get '/' do
    erb :index
end

post '/' do
	@marca = session[:turno]

	if session[:turno] == "X"
		@marca = "X"
		session[:turno] = "O"
	else
		@marca = "O"
		session[:turno] = "X"
	end

	erb :index
end