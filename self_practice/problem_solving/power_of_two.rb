def is_power_of_two(n)
  # dh el first power of two
  i = 1
  while i < n
    i *= 2
  end

  i == n
end

puts is_power_of_two(3)