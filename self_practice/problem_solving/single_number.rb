# SOLUTION 1
def single_number_one(nums)
  new_nums = []
  nums.each do |num|
    if !new_nums.include? num
      new_nums << num
    else
      new_nums.delete(num)
    end
  end
  
  new_nums[0]
end

# SOLUTION 2
def single_number_two(nums)
  nums.select{
    |num| nums.count(num) == 1
  }[0]
end