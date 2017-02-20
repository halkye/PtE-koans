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
  return :equilateral if all_sides_are_equal(a, b, c)
  return :scalene     if each_side_is_different(a, b, c)
  return :isosceles   if two_sides_are_equal(a, b, c)

  if sides_are_negative(a, b, c) 
    raise TriangleError, "Sides must be higher than zero"
  end

  if triangle_not_closing(a, b, c)
    raise TriangleError, "Sum of two sides must be higher than third one" 
  end
end

#Possible failures
def sides_are_negative(a, b, c)
  a <= 0 || b <= 0 || c <= 0
end

def triangle_not_closing(a, b, c)
  ((a + b <= c) || (a + c <= b) || (b + c <= a))
end
#Defining side lengths
def all_sides_are_equal(a, b, c) 
  a == b && b == c
end

def each_side_is_different(a, b, c) 
  a != b && b != c && a != c
end

def two_sides_are_equal(a, b, c)
  (a==b && a!=c) || (a==c && a!=b) || (b==c && b!=a)
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

