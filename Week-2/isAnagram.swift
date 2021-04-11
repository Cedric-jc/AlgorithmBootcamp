class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        var dictC = Dictionary<Character, Int>()
        var dictT = Dictionary<Character, Int>()
        for c in s {
            if let count = dictC[c] {
                dictC[c] = count + 1
            } else {
                dictC.updateValue(1, forKey: c)
            }
        }
        for c in t {
            if let count = dictT[c] {
                dictT[c] = count + 1
            } else {
                dictT.updateValue(1, forKey: c)
            }
        }
        for c in s {
            if dictC[c] != dictT[c] { return false }
        }
        return true
    }
}
