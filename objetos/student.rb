class Student 
    attr_reader :name 
    def initialize(name, *scores)
        @name = name
        @scores = scores.map(&:to_i)#formato de no se que que es lo mismo que un map que va recorriendo, pero en este caso pasa todo a entero.
    end  
    def promedio
        @scores.inject(&:+)/@scores.size.to_f
        
    end    
end    

file = File.open('scores.txt', 'r')
data = file.readlines
file.close

students = []
data.each do |line|

    ls =  line.split(', ') #separo por comas
    students<<Student.new(*ls)

end    
students.each do |student|
    puts "el nombre es #{student.name}"
    puts "el promedio final de este alumn@ es #{student.promedio}"
end 
#puts students.map {|student| student.promedio}   esto es lo mismo que lo que está abajo:
promedio_todos =  students.map(&:promedio)
promedio_final = promedio_todos.inject(:+)/promedio_todos.size
puts "el promedio final de todos los alumnos es #{promedio_final}"

# ruby student.rb