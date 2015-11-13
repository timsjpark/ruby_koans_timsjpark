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

class TriangleError < StandardError
end

def triangle(a, b, c)
  raise TriangleError if invalid_triangle?(a, b, c)
  sides = [a, b, c]
  if sides.uniq.length == 3
    return :scalene
  elsif sides.uniq.length == 2
    return :isosceles
  else
    return :equilateral
  end
end

def invalid_triangle?(a, b, c)
  return true if [a, b, c].include?(0)
  return true if [a, b, c].join('').include?('-')
  true if check_side_lengths(a, b, c)
end

def check_side_lengths(a, b, c)
  sides = [a, b, c].sort
  true unless sides[0] + sides [1] > sides [2]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
