# A peak element is an element that is strictly greater than its neighbors.
# Given an integer array nums, find a peak element, and return its index. If the array contains multiple peaks, return the index to any of the peaks.
# You may imagine that nums[-1] = nums[n] = -∞.
# You must write an algorithm that runs in O(log n) time.


# SOLUTION 1 (USING BINARY SEARCH)
find_peak_element(nums)
  left = 0
  right = nums.length - 1

  while left < right
    mid = (left + right) / 2

    if nums[mid] < nums[mid + 1]
      left = mid + 1
    else
      right = mid
    end
  end

  left
end