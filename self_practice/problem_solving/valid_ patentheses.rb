def is_valid(s)
  stack = []
  
  s.split('').each do |char|
    if char == '(' || char == '{' || char == '['
      stack.push(char)
    elsif (char == ')' && stack.last == '(') || (char == '}' and stack.last == '{') || (char == ']' and stack.last == '[')
      stack.pop
    else
      return false
    end
  end
  
  stack.empty?
end