require 'date'

class Company
    def initialize(name, *pagos)
        @name =name
        @pagos = pagos.map { |date| Date.parse(date) }
    end
    def antes(filter_date)
        raise ArgumentError.new('no es una fecha burroc')if filter_date.class != Date
        @pagos.select {|date| date < filter_date }
    end    
end    


file = File.open('empresas.txt', 'r')
data = file.readlines #leer por lineas
file.close #cierro archivo ya leido
companies = []
data.each do |line|
    ls = line.split(' ') 
    companies << Company.new(*ls)
end 

print companies[0].antes(Date.today)

# ruby company.rb