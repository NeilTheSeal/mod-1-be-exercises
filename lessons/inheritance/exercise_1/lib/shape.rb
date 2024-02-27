class Shape
  attr_reader :length, :width, :color

  def initialize(color, length, width)
    @color = color
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    2 * @length + 2 * @width
  end
end
