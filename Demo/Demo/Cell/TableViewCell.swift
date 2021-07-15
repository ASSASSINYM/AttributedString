//
//  TableViewCell.swift
//  Demo
//
//  Created by Lee on 2019/11/18.
//  Copyright © 2019 LEE. All rights reserved.
//

import UIKit
import AttributedString

class TableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textView.textContainer.lineFragmentPadding = 0
        textView.textContainerInset = .zero
    }
    
    func set(_ string: ASAttributedString) {
        textView.attributed.text = string
    }
    
    func set(_ height: CGFloat) {
        textHeight.constant = height
    }
}
