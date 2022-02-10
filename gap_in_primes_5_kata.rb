# link https://www.codewars.com/kata/gap-in-primes

require 'prime'
def gap(g, m, n)
  return nil if n > 1100000 || n <= m || g < 2 || m < 2
  result = []
  first = 0
  second = 0
  (m..n).to_a.each do |i|
    second = i if i.prime?
    if (first - second).abs == g
      result << first
      result << second
      break
    else
      first = second
    end
  end
  (first != second) ? result : nil # може бути одне просте число, яке запишеться і в first і в second
end

################### cheking ###################

puts gap(8,300,400).to_s