# https://www.codewars.com/kata/sum-of-a-sequence

def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number

  begin_number.step(end_number, step).to_a.inject(&:+)
end
