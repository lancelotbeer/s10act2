module Formula
  def perimetro(lado1, lado2)
    2 * (lado1 + lado2)
  end

  def area(lado1, lado2)
    lado1 * lado2
  end
end

class Rectangulo
  include Formula

  def initialize(lado1, lado2)
    @lado1 = lado1
    @lado2 = lado2
  end

  def lados
    puts "lado1: #{lado1} lado2: #{@lado2}"
  end

  def perimetro(lado1 = @lado1, lado2 = @lado2)
    super
  end

  def area(lado1 = @lado1, lado2 = @lado2)
    super
  end
end

class Cuadrado
  include Formula

  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "LADO: #{@lado}"
  end

  def perimetro(lado1 = @lado, lado2 = @lado)
    super
  end

  def area(lado1 = @lado, lado2 = @lado)
    super
  end
end

rectangulo = Rectangulo.new(8,4)
cuadrado = Cuadrado.new(6)

puts "Rectangulo: "
puts "Perimetro = #{rectangulo.perimetro}, Area = #{rectangulo.area}"
puts "Cuadrado: "
puts "Perimetro = #{cuadrado.perimetro}, Area = #{cuadrado.area}"
