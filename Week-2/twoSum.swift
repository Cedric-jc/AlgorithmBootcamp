class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         for i in 0..<nums.count-1 {
            let nn = nums[i]
            for j in i+1..<nums.count {
                let mm = nums[j]
                if nn + mm == target
                {
                    return [i,j]
                }
            }
        }
        return [-1,-1]
    }
}
