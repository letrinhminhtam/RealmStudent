//
//  ProductInformationViewController.swift
//  Student
//
//  Created by TamLTM on 7/19/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

import UIKit

class ProductInformationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Button
    
    @IBAction func backProductInoxButton(sender: AnyObject) {
        let productInoxViewController = ProductInoxViewController()
        navigationController?.pushViewController(productInoxViewController, animated: true)
    }
}
