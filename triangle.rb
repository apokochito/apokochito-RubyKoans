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
  # WRITE THIS CODE
  # 1. A triangle should not have any sides of length 0.
  # If it does, it's either a line segment or a point,
  # depending on how many sides are 0.
  # 2. Negative length doesn't make sense.
  # 3. Any two sides of a triangle should add up to more than the third side.
  # 4. See 3, and focus on the "more".
  raise TriangleError if [a,b,c].min <= 0
  raise TriangleError if [a,b,c].sort.reverse.reduce(:-) >= 0
  if (a == b && b == c)
    :equilateral
  elsif (a == b || a == c) || (b == c || b == a) || (c == a || c == b)
    :isosceles
  elsif (a!=b && b!=c)
    :scalene
  end
end
# https://code-examples.net/es/q/3a815b
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
