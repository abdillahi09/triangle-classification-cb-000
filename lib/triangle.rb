class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def kind
    if equilateral != isosceles && equilateral != scalene
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
