#
# File: complejo.rb
# Operaciones con Números Complejos:
# Suma, Resta, Multiplicación y División, Opuesto y Escalar
# 
# require 'pry'

class Complejo
  attr_reader :r, :i

  # Constructor
  # Parámetros:
  #    r para valor real
  #    i para valor imaginario. Si no se pasa, se asume cero
  def initialize(r, i=0)
    raise ArgumentError, "Ambos parámetros pasados han de ser REALES'" unless (r.is_a? Numeric) && (i.is_a? Numeric)
    @r, @i = r, i
  end

  # Convierte a cadena respetando el signo separador + ò -
  def to_s
    a = "(#{@r}"
    if "#{@i}"[0] == "-" then
      b = " "
    else
      b = " +"
    end
    c = "#{@i}i)"
    a + b + c
  end

  # Suma
  # Parámetros:
  #    other con complejo a sumar
  def + (other)
    Complejo.new(@r + other.r, @i + other.i)
  end

  # Resta
  # Parámetros:
  #    other con complejo a resta
  def - (other)
    Complejo.new(@r - other.r, @i - other.i)
  end

  # Opuesto
  # Parámetros:
  #    ninguno
  def -@
    Complejo.new(@r * -1, @i * -1)
  end


  # Multiplica
  # Parámetros:
  #    other con complejo a multiplicar
  def * (other)
    Complejo.new(@r * other.r - @i * other.i, @r * other.i + @i * other.i)
  end

  # Scalar
  # Parámetros:
  #    value a multiplicar por r, i de este complejo
  def scalar (value)
    Complejo.new(@r * value, @i * value)
  end

  # Divide
  # Parámetros:
  #    other con complejo divisor
  def / (other)
    Complejo.new((@r * other.r + @i * other.i) / (other.r**2 + other.i**2), (@i * other.i - @r * other.i) / (other.r**2 + other.i**2))
  end

#   binding.pry

end
