require 'sinatra'
require './lib/tridiqui'

enable :sessions

get '/' do
    erb :index
end

post '/' do
	@marca = session[:turno]
	@coordenadax = params["X"]
	@coordenaday = params["Y"]
	@cell = @coordenadax+":"+@coordenaday


	if session[:turno] == "X"
		@marca = "X"
		session[:turno] = "O"
	else
		@marca = "O"
		session[:turno] = "X"
	end

	if @cell == "1:1"
		if session[:marca1] != "X" and session[:marca1] != "O"
			session[:marca1] = @marca
		end
	elsif @cell == "1:2"
		if session[:marca2] != "X" and session[:marca2] != "O"
			session[:marca2] = @marca
		end
	elsif  @cell == "1:3"
		if session[:marca3] != "X" and session[:marca3] != "O"
			session[:marca3] = @marca
		end
	elsif  @cell == "2:1"
		if session[:marca4] != "X" and session[:marca4] != "O"
			session[:marca4] = @marca
		end
	elsif  @cell == "2:2"
		if session[:marca5] != "X" and session[:marca5] != "O"
			session[:marca5] = @marca
		end
	elsif  @cell == "2:3"
		if session[:marca6] != "X" and session[:marca6] != "O"
			session[:marca6] = @marca
		end
	elsif  @cell == "3:1"
		if session[:marca7] != "X" and session[:marca7] != "O"
			session[:marca7] = @marca
		end
	elsif  @cell == "3:2"
		if session[:marca8] != "X" and session[:marca8] != "O"
			session[:marca8] = @marca
		end
	elsif  @cell == "3:3"
		if session[:marca9] != "X" and session[:marca9] != "O"
			session[:marca9] = @marca
		end
	end	


	erb :index
end