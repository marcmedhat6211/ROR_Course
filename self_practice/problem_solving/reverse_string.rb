# SOLUTION 1
def reverse_string_one(s)
  s.reverse!
end

#SOLUTION 2
def reverse_string_two(s)
  left = 0
  right = s.length -1

  while left < right
    temp = s[left]
    s[left + 1] = s[right]
    s[right - 1] = temp
  end

  s
end