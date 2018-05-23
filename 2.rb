require 'date'
class Course
	attr_reader :name
	attr_reader :fechas
 def initialize(name, *fechas)
 @name = name
 @fechas = fechas.map {|date| Date.parse(date)}
 end
 def previo(filter_date)
puts @fechas.select {|date| date < filter_date}
end
end

file = File.open('cursos.txt', 'r')
data = file.readlines
file.close

cursos = []
data.each do |line|
 ls = line.split(', ')
cursos << Course.new(*ls)
end

cursos.each do |x|
	puts x x
end
