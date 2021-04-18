class Solution {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var pre = preorder
        var ino = inorder
        return build(&pre, 0, pre.count - 1, &ino, 0, ino.count - 1)
    }
    func build(_ preorder:inout [Int],_ startp:Int,_ endp:Int,_ inorder:inout [Int],_ starti:Int,_ endi:Int ) -> TreeNode? {
        if startp > endp {
            return nil
        }
        // 1获取头节点
        let root = TreeNode()
        root.val = preorder[startp]
        // 2获取头结点所在中续的位置
        let k = inorder.firstIndex(of:root.val) ?? -1
        let ksize = k - starti
        // 递归左子树
        root.left = build(&preorder, startp + 1, startp + ksize,&inorder,  starti, k-1)
        //递归右子树
        root.right = build(&preorder, startp + ksize + 1, endp,&inorder, k+1, endi)
        
        return root
     }
}
