# Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
# ex:
# Input: s = "leetcode"
# Output: 0

# Input: s = "aabb"
# Output: -1

# SOLUTION 1
# this solution has a time limit issue
def first_uniq_char(s)
  
  s_arr = s.split('')
  for i in 0..s_arr.length - 1
    if s_arr.count(s_arr[i]) == 1
      return i
    end
  end
  
  -1
end


# SOLUTION 2
# BETTER ONE USING HASH AND SETTING THE REPEATED VALUES TO INVALID INDECES
def first_uniq_char(s)
  hash = {}
  s_array = s.split('')
  for i in 0..s_array.length - 1
    current = s_array[i]
    if !hash.key?(current)
      hash[current] = i
    else
      hash[current] = -1
    end
  end
  
  # abbc
  # a => 0  min
  # b => -1 invalid
  # c => 3
  
  min = (2**(0.size * 8 -2) -1)
  hash.each do |char, index|
    if index != -1 && index < min
      min = index
    end
  end
  
  min == (2**(0.size * 8 -2) -1) ? -1 : min
end