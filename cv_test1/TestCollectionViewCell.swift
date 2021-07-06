//
//  TestCollectionViewCell.swift
//  cv_test1
//
//  Created by linusix on 2021/07/06.
//

import UIKit

class TestCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var alcHeight:  NSLayoutConstraint!
    
    override func awakeFromNib() {
        alcHeight = imageView.heightAnchor.constraint(equalToConstant: 0)
        alcHeight.priority = UILayoutPriority(999)
        alcHeight.isActive = true
    }
    
    func configure(_ data: Data) {
        label.text = data.title
        imageView.image = data.image
        
        if imageView.image == nil {
            alcHeight.constant = 0
        }
        else {
            alcHeight.constant = 100
        }
    }
}
