//
//  HammingDistance.swift
//  LeetCode
//
//  Created by echo on 2017/3/21.
//  Copyright © 2017年 羲和. All rights reserved.
//  两个（相同长度）字对应位不同的数量
//  对两个字符串进行异或运算，并统计结果为1的个数，那么这个数就是汉明距离
//

import UIKit

class HammingDistance: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let distance = self.hammingDistance(1, 4)
        print("distance == \(distance)")
    }
    
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        
        var n = x ^ y
        var distance: Int = 0
        while n != 0 {
            distance += 1
            n &= n-1
        }
        return distance
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
