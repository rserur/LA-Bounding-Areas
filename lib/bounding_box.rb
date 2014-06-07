class BoundingBox
  def initialize(x, y, width, height)
    @width = width
    @height = height
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
  end

  attr_reader(:width, :height, :left, :right, :top, :bottom)

  def contains_point?(x, y)
    if x >= @left && x <= @right && y >= @bottom && y <= @top
      true
    else
      false
    end
  end
end
