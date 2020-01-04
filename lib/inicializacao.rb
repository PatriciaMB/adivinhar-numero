require 'tty-cursor'
require 'tty-spinner'

class Inicializacao
	def self.inicializando
		system('CLS')
		cursor = TTY::Cursor
		print cursor.move_to(80,20)

		spinner = TTY::Spinner.new
		spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :classic)
		spinner.auto_spin # Automatic animation with default interval
		sleep(2) # Perform task
		spinner.stop('Done!') # Stop animation

		
		#print "Carregando."
		#4.times do|i|		
		#	sleep 1
		#	print "."
		#end
		#puts "."
                                                              
		sleep 2
		system('CLS')
	end
end