# link      https://www.codewars.com/kata/count-of-positives-slash-sum-of-negatives

def count_positives_sum_negatives(arr)
  return [] if [[], nil].include?(arr)

  ######################## optimized method ###########################

  # arr.each_with_object([0,0]) do |item, obj|
  #    obj[0] += 1 if item.positive?
  #    obj[1] += item if item.negative?
  # end

  new_arr = [0, 0]
  arr.each do |i|
    new_arr[0] += 1 if i.positive?
    new_arr[1] += i if i.negative?
  end
  new_arr
end

################### cheking ###################

# arr_nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
# puts count_positives_sum_negatives(arr_nums)
