def binary_search(arr, target)
  left = 0
  right = arr.length() -1

  while left < right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  return left
end

#index:0, 1, 2, 3,  4,  5,  6,  7
arr = [1, 4, 9, 13, 18, 20, 25, 30]

#expected output: 6 
puts binary_search(arr, 25)
