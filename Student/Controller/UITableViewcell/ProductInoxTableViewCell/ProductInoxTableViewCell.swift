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
    
    let productionName = "Tên sản phẩm: "
    let kindInox = "Loại Inox: "
    let production = "Số lượng: "
    let price = "Giá: "
    let phoneNumber = "01202647700"

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: Button
    @IBAction func callPhoneButton(sender: AnyObject) {
        delegate?.callPhoneTableViewCell(self)
    }
    
    //MARK: Configure
    
    func configureTableViewCell() {
        
        productNameLabel.text = NSString(format: productionName, locale: nil) as String
        kindInoxLabel.text = NSString(format: kindInox, locale: nil) as String
        priceLabel.text = NSString(format: price, locale: nil) as String
        productionLabel.text = NSString(format: production, locale: nil) as String
        phoneNumberLabel.text = NSString(format: phoneNumber, locale: nil) as String
    }
}
