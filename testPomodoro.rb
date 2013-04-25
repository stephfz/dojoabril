require 'minitest/autorun'
require_relative 'pomodoro.rb'


class TestMyPomodoro < Minitest::Unit::TestCase

def setup 
@mypomodoro = Pomodoro.new
end

def test_pomodoro_default_25
	assert_equal 25, @mypomodoro.duracion
end

 def test_pomodoro_set_duracion_39
@mypomodoro = Pomodoro.new(39)
	assert_equal 39, @mypomodoro.duracion
 end

def test_pomodoro_creado_detenido
	@mypomodoro = Pomodoro.new
	assert_equal true , @mypomodoro.detenido
end

def test_pomodoro_inicio	
	@mypomodoro = Pomodoro.new
	@mypomodoro.start
	assert_equal false , @mypomodoro.detenido
 end



def test_pomodoro_cuenta_atras
	@mypomodoro = Pomodoro.new
	@mypomodoro.start
	sleep(1)
	assert_equal 23, @mypomodoro.tiempo

end

def test_pomodoro_interrumpir
	@mypomodoro = Pomodoro.new
	@mypomodoro.start
	@mypomodoro.pause
	assert_equal 1, @mypomodoro.interrupciones

end
end
