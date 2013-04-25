class Pomodoro
	attr_reader :hilo
    attr_reader :tiempo
    attr_reader :interrupciones

def initialize(duracion = 25)
	@duracion = duracion
    @detenido = true
    @interrupciones =0
end

def duracion
	return @duracion
end

def detenido
	return @detenido
end

def start
	@tiempo = @duracion
	@detenido = false

	@hilo = Thread.new do 
		@duracion.times do
			@tiempo = tiempo - 1
			sleep(1)
			if tiempo == 0 
				@detenido = true
				Thread.kill(@hilo)
			end

		end

		
	end
	
end

def pause
	@detenido = true
	@interrupciones = @interrupciones + 1
end



end
