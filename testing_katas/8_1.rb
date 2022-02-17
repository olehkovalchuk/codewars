# https://www.codewars.com/kata/pole-vault-starting-marks

def starting_mark(height)
  rate = (10.67 - 9.45).fdiv(1.83 - 1.52)
  (((rate * height) + 10.67 - (rate * 1.83)) * 100).round.fdiv(100)
end
