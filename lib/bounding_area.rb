require_relative 'bounding_box'

class BoundingArea
  def initialize(*rectangles)
    @rectangles = rectangles.flatten
  end

  def contains_point?(x,y)
    containment = false


    @rectangles.each do | rectangle |
      if x >= rectangle.left && x <= rectangle.right && y >= rectangle.bottom && y <= rectangle.top
        containment = true
      end
    end

    containment
  end
end
