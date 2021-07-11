//
//  CustomButton.swift
//  Norvels
//
//  Created by 郡司稜太 on 2021/06/09.
//

import UIKit

class CustomButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitle("Custom", for: UIControl.State.normal)
        self.setTitleColor(UIColor.white, for: UIControl.State.normal)
        self.backgroundColor = UIColor.orange
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 32
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 4
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)
    }
}
