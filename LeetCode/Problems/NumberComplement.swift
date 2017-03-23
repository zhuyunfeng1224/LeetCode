//
//  NumberComplement.swift
//  LeetCode
//
//  Created by echo on 2017/3/23.
//  Copyright © 2017年 羲和. All rights reserved.
//  求一个数的补码：先找出有效位数，针对有效位数求反，用按位异或
//

import UIKit

class NumberComplement: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let number = self.findComplement(7)
        print("\(number)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func findComplement(_ num: Int) -> Int {
        // 先找出有效位数  如： 00000101  ->  mask = 11111000
        var mask = ~0
        while num & mask > 0 {
            mask <<= 1
        }
        
        // ~mask = 00000111
        return num ^ ~mask
    }

}
