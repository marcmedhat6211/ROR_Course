# SOLUTION 1
def contains_duplicate_one(nums)
  new_nums = nums.uniq!
  
  new_nums == nums
end

# SOLUTION 2
# note that this solution is slower than the first one
def contains_duplicate_two(nums)
  new_nums = []
  
  nums.each do |num|
    if new_nums.include? num
      return true
    else
      new_nums.push(num)
    end
  end
  
  false
end