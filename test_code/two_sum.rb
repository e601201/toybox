def two_sum(nums, target)
  t = nums.length
  i = 0
  while i < t do
    if nums[i]+nums[i+1] == target
      return [i,i+1]
    else
    i += 1
    end
  end
end

p two_sum([1,3,5], 8)