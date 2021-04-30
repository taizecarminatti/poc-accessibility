//
//  CustomTabBarController.swift
//  AccessibilityPoc
//
//  Created by Taize Carminatti on 19/04/21.
//

import UIKit

class CustomTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .white
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.3003956079, green: 0.0996228978, blue: 0.505497992, alpha: 1)
        tabBarItem.titleTextAttributes(for: .normal)
       
        let view1 = UINavigationController(rootViewController: View1Mock())
        view1.tabBarItem.title = "Carteira"
        view1.tabBarItem.image = UIImage(named: "carteira")
        view1.tabBarItem.largeContentSizeImage = UIImage(named: "carteira")
    
        
        let view2 = UINavigationController(rootViewController: View2Mock())
        view2.tabBarItem.title = "Cartão"
        view2.tabBarItem.image = UIImage(named: "cartao")
        view2.tabBarItem.largeContentSizeImage = UIImage(named: "cartao")
        
        
        let viewHome = UINavigationController(rootViewController: HomeViewController())
        viewHome.tabBarItem.title = "Home"
        viewHome.tabBarItem.image = UIImage(named: "home")
        viewHome.tabBarItem.largeContentSizeImage = UIImage(named: "home")
        
        viewControllers = [view1, viewHome, view2]
    }
}
