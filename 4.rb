propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(hash)
    @nombre = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end

  def ladrar
  	"#{nombre} esta ladrando!"
  end
end

perro = Dog.new(propiedades)
puts perro.ladrar