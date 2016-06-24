require 'sinatra'



get '/' do
    erb :index
end

post '/' do
	@marcao = "O"
	erb :index
end