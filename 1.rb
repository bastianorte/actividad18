class Table
	attr_reader :name
	attr_reader :mesas
 def initialize(name, *mesas)
 @name = name
 @mesas = mesas.map(&:to_i)
 end
 def mayor
ultimos = @mesas.sort.last(&:chomp)
end
def hola
promedio = @mesas.inject(&:+) / 4.0
end
end
productos = []
data = []
File.open('casino.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
 ls = prod.split(', ')
 productos << Table.new(*ls)
end
puts "#1"
productos.each do |x|
puts "#{x.name} #{x.mayor}"
end
puts "#2"
productos.each do |x|
puts x.hola
end
