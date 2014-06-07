require_relative 'bounding_box'

class BoundingArea
  def initialize(*rectangles)
    @rectangles = rectangles.flatten
  end

  def contains_point?(x,y)
    contained = false

    @rectangles.each do | rectangle |
      if rectangle.contains_point?(x, y)
        contained = true
      end
    end

    contained
  end
end
