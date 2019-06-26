//
//  ViewController.swift
//  RLACoordinator
//
//  Created by juanjogramo@gmail.com on 06/19/2019.
//  Copyright (c) 2019 juanjogramo@gmail.com. All rights reserved.
//

import UIKit
import RLACoordinator

class ViewController: UIViewController, Storyboarded {
  
  weak var coordinator: MainCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func buyAction(_ sender: UIButton) {
    coordinator?.buySubscription()
  }
  
  @IBAction func createAccountAction(_ sender: UIButton) {
    coordinator?.createAccount()
  }
  
}

