class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n == 0 { return false }
        if n == 1 { return true }
        if n % 2 != 0 { return false }

        var n: Int = n
        while n%2 == 0 {
            n = n / 2
        }
        return n == 1
    }
}