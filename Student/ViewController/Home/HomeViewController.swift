//
//  HomeViewController.swift
//  Student
//
//  Created by TamLTM on 7/19/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Set Up UI
    
    private func setUpUI() {
        
    }
    
    //MARK: Set Up Data
    
    private func setUpData() {
        
    }
    
    //MARK: -Button
    
    @IBAction func productInox(sender: AnyObject) {
        let productInoxViewController = ProductInoxViewController()
        navigationController?.pushViewController(productInoxViewController, animated: true)
    }
}
