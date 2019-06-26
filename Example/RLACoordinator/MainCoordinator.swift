//
//  MainCoordinator.swift
//  RLACoordinator_Example
//
//  Created by Juan José Jr Granados Moreno on 6/19/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import RLACoordinator

class MainCoordinator: NSObject, Coordinator {
  
  // MARK: - Properties
  var children = [Coordinator]()
  var navigationController: UINavigationController
  
  // MARK: - Life cycle
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    navigationController.delegate = self
    let viewController = ViewController.instantiate(fromStoryboard: "Main")
    viewController.coordinator = self
    navigationController.pushViewController(viewController, animated: false)
  }
  
  func childDidFinish(_ child: Coordinator?) {
    
//    children = children.filter { $0 !== child }
    
    for (index, coordinator) in children.enumerated() {
      if coordinator === child {
        children.remove(at: index)
        break
      }
    }
  }
  
}

// MARK: - Show Buy View Controller
extension MainCoordinator {
  func buySubscription() {
    let child = BuyCoordinator(navigationController: navigationController)
    child.parentCoordinator = self
    children.append(child)
    child.start()
  }
}

// MARK: - Show Create Account View Controller
extension MainCoordinator {
  func createAccount() {
    let createAccountViewController = CreateAccountViewController.instantiate(fromStoryboard: "Main")
    createAccountViewController.coordinator = self
    navigationController.pushViewController(createAccountViewController, animated: true)
  }
}

// MARK: - Navigation Controller Delegate
extension MainCoordinator: UINavigationControllerDelegate {
  func navigationController(_ navigationController: UINavigationController,
                            didShow viewController: UIViewController,
                            animated: Bool) {
    guard
      let fromViewController = navigationController
        .transitionCoordinator?
        .viewController(forKey: .from)
      else {
        return
    }
    
    if navigationController.viewControllers.contains(fromViewController) {
      return
    }
    
    if let buyViewController = fromViewController as? BuyViewController {
      childDidFinish(buyViewController.coordinator)
    }
  }
}
