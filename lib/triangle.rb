class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalen

  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def kind
    if equilateral != isosceles
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
