# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	attr_reader :a, :b
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
		# Del tipo a/b
		"#{@numerador}/#{@denominador}"
	end
	
	# Nota: se puede hacer a/b + c ?
	def suma(racional)
		# Si no es un objeto del tipo Fraccion, devuelve una excepcion
		raise ArgumentError, 'Argumento no racional' unless racional.is_a? Fraccion
		
		# Sobra mcm
		# mcm = lcm(@denominador, racional.b)
		# a = new Fraccion(@numerador*racional.b, @denominador*racional.b)
		# b = new Fraccion(racional.a*@denominador, racional.b*@denominador)
		# resultado = new Fraccion(a.a + b.a, a.b) # Igual que b = b.b
		# resultado.reducir # Reducción viene dentro de initialize, llamado desde new

		# Optimizado
		# a/b + c/d = (a*d + b*c)/b*d
		resultado = new Fraccion(@numerador*racional.b + @denominador*racional.a, @denominador*racional.b)
	end
	
	def resta(racional)
		raise ArgumentError, 'Argumento no racional' unless racional.is_a? Fraccion

		# a/b - c/d = (a*d - b*c)/b*d
		resultado = new Fraccion(@numerador*racional.b - @denominador*racional.a, @denominador*racional.b)
	end
	
	def producto(racional)
		raise ArgumentError, 'Argumento no racional' unless racional.is_a? Fraccion
		
		# a/b * c/d = (a*c)/(b*d)
		resultado = new Fraccion(@numerador*racional.a, @denominador*racional.b)
	end
	
	def division(racional)
		raise ArgumentError, 'Argumento no racional' unless racional.is_a? Fraccion
		
		# (a/b) / (c/d) = (a*d)/(b*c)
		resultado = new Fraccion(@numerador*racional.b, @denominador*racional.a)
	end
	
end
