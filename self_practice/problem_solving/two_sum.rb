# SOLUTION 1
def two_sum_one(nums, target)
  result = []
  
  nums.each do |num|
    diff = target - num
    
    if nums.include? diff
      result[0] = nums.find_index(num)
      if nums.count(diff) == 1
        result[1] = nums.find_index(diff)
      else
        result[1] = nums.rindex(num)
      end
    end
  end
  
  result
end

# SOLUTION 2
def two_sum(nums, target)
  result = []
  map = {}
  
  (0..nums.length).each do |i|
    diff = target - nums[i]
    if map.has_key?(diff)
      result[0] = i
      result[1] = map[diff]
      return result
    end
    map[nums[i]] = i
  end
  
  result
end

