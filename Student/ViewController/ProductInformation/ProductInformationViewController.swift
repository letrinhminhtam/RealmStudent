//
//  ProductInformationViewController.swift
//  Student
//
//  Created by TamLTM on 7/19/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

import UIKit

class ProductInformationViewController: UIViewController {

    @IBOutlet weak private var productNameLabel: UILabel!
    @IBOutlet weak private var kindInoxLabel: UILabel!
    @IBOutlet weak private var priceLabel: UILabel!
    @IBOutlet weak private var productionLabel: UILabel!
    @IBOutlet weak private var phoneNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureProductInformationViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Button
    
    @IBAction func backProductInoxButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    //MARK: Configure
    
    private func configureProductInformationViewController() {
        setUpUI()
        setUpData()
        setText()
    }
    
    //MARK: Set Up UI
    
    private func setUpUI() {

    }
    
    //MARK: Set Up Data
    
    private func setUpData() {
        
    }
    
    private func setText() {
        productNameLabel.text = NSString(format: "\(Strings.productionName)", locale: nil) as String
        kindInoxLabel.text = NSString(format: Strings.kindInox, locale: nil) as String
        priceLabel.text = NSString(format: Strings.price, locale: nil) as String
        productionLabel.text = NSString(format: Strings.production, locale: nil) as String
        phoneNumberLabel.text = NSString(format: Strings.phoneNumber, locale: nil) as String
    }
}
