require 'lib/complejo'
require 'test/unit'

class TestComplejo < Test::Unit::TestCase
  # Antes de cada test
  def setup
    @z1 = Complejo.new(0,0)
    @z2 = Complejo.new(1,1)
    @z3 = Complejo.new(4,4)
    @z4 = Complejo.new(2,3)
    @z5 = Complejo.new(-1,-5)
    @z6 = Complejo.new(1,1)
  end

  # Tras cada test
  def tear_down
    # nothing
  end

  # Test simple
  def test_simple
    assert_equal("(0 +0i)", @z1.to_s)
    assert_equal("(5 +5i)", (@z2.scalar 5).to_s)
    assert_equal("(-1 -1i)", (-@z2).to_s)
    assert_equal("(1 +1i)", (@z1 + @z2).to_s)
  end

  # Test de tipo en constuctor
  def test_type_check
    assert_raise(ArgumentError) {Complejo.new('1','1')}
  end

  # Test producto escalar
  def test_scalar
    assert_equal("(5 +5i)", (@z2.scalar 5).to_s, "Producto escalar")
  end

  # Test suma
  def test_add
    assert_equal("(6 +7i)", (@z3 + @z4).to_s, "Suma")
  end

  # Test resta
  def test_subtract
    assert_equal("(2 +1i)", (@z3 - @z4).to_s, "Resta")
  end

  # Test multiplicación
  def test_multiply
    assert_equal("(-4 +24i)", (@z3 * @z4).to_s, "Multiplicación")
  end

  # Test división
  def test_divide
    assert_equal("(-3 -2i)", (@z5 / @z6).to_s, "División")
  end

end
