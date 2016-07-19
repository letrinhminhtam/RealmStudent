//
//  ProductInoxViewController.swift
//  Student
//
//  Created by TamLTM on 7/19/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

import UIKit

let name = "ProductInoxTableViewCell"

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
        tableView.registerNib(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: "Cell")
    }
}

extension ProductInoxViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! ProductInoxTableViewCell
        return cell
    }
}
