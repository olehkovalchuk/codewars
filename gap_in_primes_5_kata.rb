# link https://www.codewars.com/kata/gap-in-primes

require 'prime'
def gap(g, m, n)
  return nil if n > 1100000
  prime_arr = []
  result = []
  (m..n).to_a.each do |i|
    prime_arr << i if i.prime?
  end
  prime_arr.each_with_index do |element, i|
    if prime_arr[i+1] != nil
      if (prime_arr[i+1] - prime_arr[i]) == g
        result << prime_arr[i]
        result << prime_arr[i+1]
        break
      end
    else
      return nil
    end
  end
  result
end

################### cheking ###################

puts gap(8,300,400).to_s