class Roulette
	 	def play(numero)
			r = (1..10).to_a
			random_number = r.sample
			roulette_history(random_number)

			if random_number == numero
				winner(numero)
				puts "ganaste"
	end
	puts "perdiste el numero era #{random_number}"
end

def roulette_history(x)
	File.open('roulette_history.txt', 'a') do |f|
		f.puts x
end
end
def winner(y)
	File.open('winners.txt', 'a') do |f|
		f.puts y
end
end
def mas(z)
	File.open('rouletter_history.txt', 'a') do |f|
		f.puts z
end
end
end

primer_numero = Roulette.new
primer_numero.play(5)
