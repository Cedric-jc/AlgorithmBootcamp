import Cocoa

class Solution {
    public func twoSum(nums:[Int], target: Int) -> [Int] {
        for i in 0...(nums.count - 1) {
            for j in (i + 1)...(nums.count - 1) {
                if nums[j] == target - nums[i]  {
                    return [i, j];
                }
            }
        }
        return []
    }
}