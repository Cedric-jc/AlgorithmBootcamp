class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var mRight = m - 1
        var nRight = n - 1

        while nRight >= 0 {
            if mRight >= 0 && nums1[mRight] > nums2[nRight] {
                nums1[mRight + nRight + 1] = nums1[mRight]
                mRight -= 1
            } else {
                nums1[mRight + nRight + 1] = nums2[nRight]
                nRight -= 1
            }
        }
    }
}
