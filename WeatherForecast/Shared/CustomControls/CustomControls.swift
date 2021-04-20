//
//  CustomControls.swift
//  collectionview
//
//  Created by Shiva on 04/19/2021.
//

import Foundation
import UIKit

//Size+Font+Color

class LabelLargeRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Large)
    }
}

class LabelSmallRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Small)
    }
}



class LabelMediumRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Medium)
    }
}

class LabelExtraLargeRegularBlack: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    func setUpLabel() {
        self.textColor = Theme.Colors.Black
        self.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.ExtraLarge)
    }
}



class RoundedButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }
    func setUpButton()  {
        setTitleColor(Theme.Colors.Black, for: .normal)
        titleLabel?.font = UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Small)
        self.layer.cornerRadius = Theme.CornerRadius.defaultRadius
        self.layer.borderWidth = 1
    }
}


class CustomTextfield: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTextfield()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpTextfield()
    }
    func setUpTextfield()  {
        self.textColor = Theme.Colors.Black
        self.font =  UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Small)

    }
}

