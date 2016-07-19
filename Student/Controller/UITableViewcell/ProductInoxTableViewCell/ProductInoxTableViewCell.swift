//
//  ProductInoxTableView.swift
//  Student
//
//  Created by TamLTM on 7/19/16.
//  Copyright © 2016 Asiantech. All rights reserved.
//

import UIKit

protocol ProductInoxTableViewCellDelegate: NSObjectProtocol {
    func callPhoneTableViewCell(callPhoneCell: ProductInoxTableViewCell)
}

class ProductInoxTableViewCell: UITableViewCell {
    
    @IBOutlet weak private var productImageView: UIImageView!
    @IBOutlet weak private var productNameLabel: UILabel!
    @IBOutlet weak private var kindInoxLabel: UILabel!
    @IBOutlet weak private var productionLabel: UILabel!
    @IBOutlet weak private var priceLabel: UILabel!
    @IBOutlet weak private var phoneNumberLabel: UILabel!
    
    weak var delegate: ProductInoxTableViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: Button
    @IBAction func callPhoneButton(sender: AnyObject) {
        delegate?.callPhoneTableViewCell(self)
    }
}
