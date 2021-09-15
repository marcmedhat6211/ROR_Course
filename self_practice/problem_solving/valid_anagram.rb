# Given two strings s and t, return true if t is an anagram of s, and false otherwise.
# ex:
# Input: s = "anagram", t = "nagaram"
# Output: true

#SOLUTION 1
def is_anagram_one(s, t)
  return false unless s.length == t.length
  
  ('a'..'z').each do |char|
    return false unless s.count(char) == t.count(char)
  end
  
  true
end

#SOLUTION 2
def is_anagram_two(s, t)
  return false unless s.length == t.length

  s_array = s.split('').sort
  t_array = t.split('').sort

  (0...s.length).each do |index|
    return false if s_array[index] != t_array[index] 
  end

  true
end

#SOLUTION 3 (FASTER)
# same as the previous one unless here we're comparing bytes not characters
def is_anagram(s, t)
  return false unless s.length == t.length
  
  s.bytes.sort! == t.bytes.sort!
end


# SOLUTION 4
# NOT GOOD BECAUSE IT EXCEEDS THE TIME LIMIT
def is_anagram(s, t)
  return false if s.length != t.length
  
  s.each_char do |char|
    if !t.include? char
      return false
    end
    
    if s.count(char) != t.count(char)
      return false
    end
  end
  
  true
end

# SOLUTION 2
