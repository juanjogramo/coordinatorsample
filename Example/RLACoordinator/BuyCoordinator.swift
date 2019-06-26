//
//  BuyCoordinator.swift
//  RLACoordinator_Example
//
//  Created by Juan José Jr Granados Moreno on 6/19/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import RLACoordinator

class BuyCoordinator: Coordinator {
  
  weak var parentCoordinator: MainCoordinator?
  
  var children = [Coordinator]()
  
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let buyViewController = BuyViewController.instantiate(fromStoryboard: "Main")
    buyViewController.coordinator = self
    navigationController.pushViewController(buyViewController, animated: true)
  }
  
//  func didFinishBuying() {
//    parentCoordinator?.childDidFinish(self)
//  }
  
  

}
