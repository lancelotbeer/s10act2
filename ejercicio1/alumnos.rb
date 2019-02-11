class Alumno
   def initialize(nombre, nota1, nota2, nota3, nota4)
   @nombre = nombre
   @nota1 = nota1
   @nota2 = nota2
   @nota3 = nota3
   @nota4 = nota4
   end
   def read_file(notas = 'notas.txt')
     alumnos = []
     data = []
     File.open(notas, 'r') { |file| data = file.readlines }
     data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
     end
   end
end

a = Alumno.new('ja', 1, 1, 1, 1)
puts a.read_file
  #Actividad 020 - Módulos, Mixins y Rack.
  #Ejercicio 1: Método de clase
