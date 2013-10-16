# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	def initialize(numerador, denominador)
		# Comprobar si son enteros
		@numerador = numerador
		if denominador < 0
			# lanzar excepción, o corregir
		end
		@denominador = denominador
		
		# Reducir a expresión mínima
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
