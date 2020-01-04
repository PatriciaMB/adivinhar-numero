class SortearNumero
	#estatico = self
	def self.sortear
		v = []
		File.open(File.expand_path('../../numero.txt', __FILE__), 'r') do |arq|
			while line = arq.gets
				v.push(line.to_i)
			end
		end

		v.sample #escolhe um dos meus elementos
		
	end
end