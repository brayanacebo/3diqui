class Tridiqui
attr_accessor :turno
	def initialize
		@turno = "O"
	end
	def cambiarTurno
		if @turno == "X"
			@marca = @turno
			@turno = "O"
		else
			@marca = @turno
			@turno = "X"
		end
	end
end