  #complejo es un numero compuesto pr un rela y un imaginario: 2 + 3i
 #---------------------MUTABLE (CAMBIA Z1)----------------------------
 class Complejo
    attr_reader :real, :imaginario # es necesario darle el attr ar que funcionen en def +(z2)
    def initialize(real, imaginario)
        @real = real
        @imaginario = imaginario
    end

    def +(z2) #tenemos un numero al que le sumaremos otro, en este caso z2
        @real += z2.real #a la parte real se le suma la real y a la imaginaria la imaginaria.
        @imaginario += z2.imaginario
    end 

    def to_s #esto es para poder usar i de los imaginarios
        "#{@real} + #{@imaginario}i" 
    end
 end   
 
 z1 = Complejo.new(2,3) 
 z2 = Complejo.new(2,3)
 z1 + z2

 #para que sea mutable sumamos z2 a z1, esto resultará en la modificación de z1
 puts "este es z1 = #{z1} mutable"

 
 #---------------------INMUTABLE (NO CAMBIA Z1)---------------------------
 class Complejo
    attr_reader :real, :imaginario 
    def initialize(real, imaginario)
        @real = real
        @imaginario = imaginario
    end

    def +(z2) 
        Complejo.new(@real + z2.real, @imaginario + z2.imaginario)
    end 

    def to_s 
        "#{@real} + #{@imaginario}i" 
    end
 end   
 
 z1 = Complejo.new(2,3) 
 z2 = Complejo.new(2,3)
 z3 = z1 + z2

 #para que sea mutable sumamos z2 a z1, esto resultará en la modificación de z1
 puts "este es z3 = #{z3} inmutable"
 puts "este es  z1 = #{z1} inmutable"
 puts "este es  z2 =#{z2} inmutable"

 
 # ruby complejo.rb