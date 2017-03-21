//
//  ViewController.swift
//  LeetCode
//
//  Created by echo on 2017/3/21.
//  Copyright © 2017年 羲和. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let data = ["HammingDistance"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        if indexPath.row < data.count {
            cell?.textLabel?.text = data[indexPath.row]
        }
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row < data.count {
            let filename = data[indexPath.row]
            if let clazz = NSClassFromString("LeetCode.\(filename)") as? UIViewController.Type {
                let controller: UIViewController = clazz.init()
                controller.view.backgroundColor = UIColor.white
                self.navigationController?.pushViewController(controller, animated: true)
            }
            
        }
    }
}

