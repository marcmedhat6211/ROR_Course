#Global array
$arr = [29, 15, 56, 41, 42, 36, 75, 8]
print $arr
puts


def merge(left, mid, right)
  temp = []
  location = left
  list1 = left
  list2 = mid + 1

  while list1 <= mid && list2 <= right
    if $arr[list1] < $arr[list2]
      temp[location] = $arr[list1]
      location += 1
      list1 += 1
    else
      temp[location] = $arr[list2]
      location += 1
      list2 += 1
    end
  end

  while list1 <= mid
    temp[location] = $arr[list1]
    location += 1
    list1 += 1
  end

  while list2 <= right
    temp[location] = $arr[list2]
    location += 1
    list2 += 1
  end

  location = left
  for location in location..right do
    $arr[location] = temp[location]
  end
end

def merge_sort(left, right)
  if (left < right)
    mid = (left + right) / 2
    merge_sort(left, mid)
    merge_sort(mid + 1, right)
    merge(left, mid, right)
  end
end

merge_sort(0, $arr.length() - 1)
40.times do
  print "-"
end
puts
print $arr