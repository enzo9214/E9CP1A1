class Morseable


  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    @morse_dictionary = {} 
    @morse_dictionary[0] = '-----'
    @morse_dictionary[1] = '.----'
    @morse_dictionary[2] = '..---'
    @morse_dictionary[3] = '...--'
    @morse_dictionary[4] = '....-'
    @morse_dictionary[5] = '.....'
    @morse_dictionary[6] = '-....'
    @morse_dictionary[7] = '--...'
    @morse_dictionary[8] = '---..'
    @morse_dictionary[9] = '----.'
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse