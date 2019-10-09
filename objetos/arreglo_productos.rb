class Product
    attr_reader :red
    def initialize(name,blue,red,green)
        @name = name #ocup variables de instancia para que sean en sadas en  otro momento.
        @blue = blue.to_i
        @red = red.to_i
        @green = green.to_i
    end  
    def total
        @blue+@red+@green
    end
end

products = []
file = File.open('products.txt', 'r') #que abro y para qué r de reader.
data = file.readlines #leer por lineas
file.close #cierro archivo ya leido
data.each do |line|
    name,blue,red,green = line.split(', ') #por cada linea separo por criterio, en este caso la "," y lo guardo en el array vacío "products"
    products << Product.new(name,blue,red,green)
end    

data.each do |product|
    puts product.red  #puedo acceder al stock de red siempre que tenga un attr reader ya que sino queda como indefinido para esta instancia
end 

puts products.inject(0){|sum, product|sum + product.red}
puts products.inject(0){|sum, product|sum + product.total}
# ruby arreglo_productos.rb