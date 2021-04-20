//
//  Theme.swift
//  collectionview
//
//  Created by Shiva on 04/20/21.
//

import Foundation
import UIKit

struct Theme {
    
    struct Colors {
        static let Purple = UIColor.purple
        static let White = UIColor.white
        static let Black = UIColor.black
        static let Grey = UIColor.gray
    }
    
    /// Basic app font use in application
    struct Fonts {
        static let Regular = "AvenirNext-Regular"
    }
    
    /// Basic app font size use in application
    struct FontSize {
        static let Small = CGFloat(15)
        static let Medium = CGFloat(17)
        static let Large = CGFloat(22)
        static let ExtraLarge = CGFloat(50)
    }
    
    struct CornerRadius {
        static let defaultRadius = CGFloat(10)
    }
}

