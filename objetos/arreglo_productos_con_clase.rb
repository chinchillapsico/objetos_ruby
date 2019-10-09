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
    def self.load_data #en el metodo de clase  pongo todo lo que debe hacer para abrir, recorrer y generar finalmente el arreglo products.
        file = File.open('products.txt', 'r')
        data = file.readlines 
        file.close 
        products = []

        data.each do |line|
            name,blue,red,green = line.split(', ')
            products << Product.new(name,blue,red,green)
        end
        products #retorna el arreglo luego de  haberlo creado.
    end    
end

products = Product.load_data
print products

# ruby arreglo_productos_con_clase.rb