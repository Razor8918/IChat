//
//  MainTabBarController.swift
//  IChat
//
//  Created by Георгий on 06.10.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        
        tabBar.tintColor = .purple
        _ = UIImage.SymbolConfiguration(weight: .medium)
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right")!
        let peopleImage = UIImage(systemName: "person.2")!
        
        viewControllers = [
        generateNavigationController(rootViewController: listViewController, title: "Conversations", image: convImage),
        generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage)]
    }
    
    
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
