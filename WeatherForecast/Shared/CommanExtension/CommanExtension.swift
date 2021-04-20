//
//  CommanExtension.swift
//  RestaurantSample
//
//  Created by Shiva on 04/19/21.
//

import Foundation
import UIKit

enum StoryBoardName : String{
    case Main = "Main"
}

extension Bundle {
    var displayName: String {
        return object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? ""
    }
}

extension UIViewController {
    func instantiateController<T>(forStoryboard module : StoryBoardName = .Main) -> T {
        let storyboard = UIStoryboard.init(name: module.rawValue, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as! T
    }
    
    func showAlert(title : String = Bundle.main.displayName, message : String?, actions : UIAlertAction?...) -> Void {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if !actions.isEmpty{
            for action : UIAlertAction? in actions {
                if action != nil {
                    alertController.addAction(action!)
                }
            }
        } else {
            let okAction = UIAlertAction(title: "ok", style: .default) { (action) in
            }
            alertController.addAction(okAction)
        }
        
        if self.presentedViewController == nil {
                self.present(alertController, animated: true, completion: nil)
        } else {
                self.dismiss(animated: false) { () -> Void in
                self.present(alertController, animated: true, completion: nil)
            }
        }
        
    }
    
}



extension UICollectionView {

    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: String(describing: T.self) , for: indexPath) as? T else {
            fatalError("Unable to Dequeue Reusable Collection View Cell")
        }

        return cell
    }
    
    func register<T: UICollectionViewCell>(_: T.Type) {
        self.register(UINib(nibName: String(describing: T.self), bundle: .main), forCellWithReuseIdentifier: String(describing: T.self))
    
    }
    

}

extension UITableView {
    
    func dequeueCell<T: UITableViewCell>(ofType type: T.Type, identifier: String? = nil) -> T {
        
        let cellName = identifier == nil ? String(describing: T.self) : identifier!
        return dequeueReusableCell(withIdentifier: cellName) as! T
    }
    
}
