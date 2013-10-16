# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	def initialize(numerador, denominador)
		# Comprobar si son enteros. En caso de que no lo sean, se genera una excepción
		raise ArgumentError, 'Argumentos no enteros.' unless numerador.is_a? Integer and denominador.is_a? Integer
		raise ArgumentError, 'Denominador nulo.' unless denominador != 0
		
		@numerador = numerador
		@denominador = denominador
		
		# Reducir a expresión mínima
		reducir
	end
	
	def reducir
		comun_div = gcd(numerador, denominador)
		@numerador = @numerador/comun_div
		@denominador = @denominador/comun_div
	end
	
	def to_s
		"#{@numerador}/#{@denominador}"
	end
	
	# Nota: se puede hacer a/b + c ?
	def suma(racional)
		resultado
		
		resultado
	end
	
	def resta(racional)
		resultado
		
		resultado
	end
	
	def producto(racional)
		resultado
		
		resultado
	end
	
	def division(racional)
		resultado
		
		resultado
	end
	
end
