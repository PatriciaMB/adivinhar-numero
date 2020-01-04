require_relative 'Inicializacao'
require_relative 'sortear_numero'

class AdivinharNumero
	attr_reader :numero
	attr_reader :venceu

	def initialize
		Inicializacao.inicializando
		@numero = SortearNumero.sortear             #Random.rand(1..10)
		@venceu = false
	end

	def tentar_adivinhar(numero = 0)
		if numero == @numero
			@venceu = true
			return "Você venceu!"
		elsif numero > @numero
			return "#{@numero} O numero informado é muito alto!"
		else 
			return "#{@numero} O numero informado é muito baixo!"
		end
	end
end