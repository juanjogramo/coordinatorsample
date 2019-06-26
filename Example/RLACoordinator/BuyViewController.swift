//
//  BuyViewController.swift
//  RLACoordinator_Example
//
//  Created by Juan José Jr Granados Moreno on 6/19/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import RLACoordinator

class BuyViewController: UIViewController, Storyboarded {
  
  weak var coordinator: BuyCoordinator?
  
  var selectedProduct = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
//  override func viewDidDisappear(_ animated: Bool) {
//    super.viewDidDisappear(animated)
//    coordinator?.didFinishBuying()
//  }

  
  
}
