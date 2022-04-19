//
//  TabItem.swift
//  customizedtabbar
//
//  Created by cuongdd on 19/04/2022.
//

import UIKit

enum TabItem: String, CaseIterable {
    case home = "home"
    case calender = "calender"
    case friends = "friends"
    case profile = "profile"
    
    
    var viewController: UIViewController {
        switch self {
        case .home:
            return HomeViewController()
        case .calender:
            return CalenderViewController()
        case .friends:
            return FriendsViewController()
        case .profile:
            return ProfileViewController()
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .home:
            return UIImage(named: "icon_home")!
        case .calender:
            return UIImage(named: "icon_calender")!
        case .friends:
            return UIImage(named: "icon_friends")!
        case .profile:
            return UIImage(named: "icon_profile")!
        }
    }
    
    var displayTitle: String {
        return self.rawValue.capitalized(with: nil)
    }
}
