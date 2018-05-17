class Tienda
  def create_list(producto)
    File.open('nuevo_catalogo.txt', 'a') { |file| file.puts("#{producto.name}, #{producto.large}, #{producto.medium}, #{producto.small}")}
  end 
end  

class Product
  attr_accessor :name, :large, :medium, :small, :xsmall

  def initialize(name,large,medium,small,xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def average
  	(@large + @medium + @small + @xsmall)/4
  end	

end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

tienda = Tienda.new

##products_list.each {|producto| puts producto.average}
products_list.each { |producto| tienda.create_list(producto)}
