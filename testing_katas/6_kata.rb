# https://www.codewars.com/kata/floating-point-approximation-i
def f(x)
  x.fdiv(1 + Math.sqrt(1 + x))
end
