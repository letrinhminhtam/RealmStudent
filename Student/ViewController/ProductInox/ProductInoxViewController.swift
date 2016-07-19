//
//  ProductInoxViewController.swift
//  Student
//
//  Created by TamLTM on 7/19/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

import UIKit

let productInoxtableViewCell = "ProductInoxTableViewCell"
let cell = "Cell"

class ProductInoxViewController: UIViewController {
    
    @IBOutlet weak private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureProductInox()
        setUpUI()
        setUpData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: -Button
    
    @IBAction func backButton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    //MARK: - configure
    
    private func configureProductInox() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: Set Up UI
    
    private func setUpUI() {
        registerTableView()
    }
    
    //MARK: Set Up Data
    
    private func setUpData() {
        
    }
    
    //MARK: -Register
    func registerTableView() {
        tableView.registerNib(UINib(nibName: productInoxtableViewCell, bundle: nil), forCellReuseIdentifier: cell)
    }
}

extension ProductInoxViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 126
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let productCell = tableView.dequeueReusableCellWithIdentifier(cell) as! ProductInoxTableViewCell
        productCell.delegate = self
        productCell.configureTableViewCell()
        return productCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let productInfo = ProductInformationViewController()
        navigationController?.pushViewController(productInfo, animated: true)
        print("did select row")
    }
}

extension ProductInoxViewController: ProductInoxTableViewCellDelegate {
    func callPhoneTableViewCell(callPhoneCell: ProductInoxTableViewCell) {
        print("Call Phone")
    }
}
