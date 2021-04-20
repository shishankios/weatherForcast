//
//  BaseViewController.swift
//  collectionview
//
//  Created by Shiva on 04/20/21.
//

import UIKit



class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultNavigationSetup()
    }
    
    func defaultNavigationSetup()  {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.barTintColor = Theme.Colors.Purple
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.shadowImage = UIImage()
        
        if let font =  UIFont(name: Theme.Fonts.Regular, size: Theme.FontSize.Medium) {
            self.navigationController?.navigationBar.titleTextAttributes =
                [NSAttributedString.Key.foregroundColor: Theme.Colors.White,
                 NSAttributedString.Key.font:font]
        }
        
        setBackButtonTitle()
    }
    
    func setBackButtonTitle(title: String = "") {
        if let nav = self.navigationController,
            let item = nav.navigationBar.topItem {
            item.backBarButtonItem  = UIBarButtonItem(title: title, style: UIBarButtonItem.Style.plain, target: self, action:
                #selector(self.backButtonAction))
        } else {
            if let nav = self.navigationController,
                let _ = nav.navigationBar.backItem {
                self.navigationController?.navigationBar.backItem?.title = title
            }
        }
    }
    @objc func backButtonAction() {
        self.navigationController?.popViewController(animated: true)
    }
    
}
