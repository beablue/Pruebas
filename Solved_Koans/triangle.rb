# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  if is_TriangleError?(a, b, c)
    raise TriangleError
  end

  if is_equilateral?(a, b, c)
    return :equilateral
  elsif is_isosceles?(a, b, c)
    return :isosceles
  elsif is_scalene?(a, b, c)
    return :scalene
  end

end

def is_equilateral?(a, b, c)
  a == b && b == c
end

def is_isosceles?(a, b, c)
  (a == b || b == c || a == c)
end

def is_scalene?(a, b, c)
  !(a == b && b == c)
end

def is_TriangleError?(a, b, c)
  is_zero_or_negative?(a, b, c) || is_an_invalid_isosceles?(a, b, c)
end

def any_side_zero_or_negative?(a, b, c)
  a <= 0 || b <= 0 || c <= 0
end

def is_an_invalid_isosceles?(a, b, c)
  (a == b && ((a + b) <= c)) ||
  (b == c && ((b + c) <= a)) ||
  (a == c && ((a + c) <= b))
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
