//
//  AppDelegate.swift
//  RLACoordinator
//
//  Created by juanjogramo@gmail.com on 06/19/2019.
//  Copyright (c) 2019 juanjogramo@gmail.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var coordinator: MainCoordinator?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let navController = UINavigationController()
    coordinator = MainCoordinator(navigationController: navController)
    coordinator?.start()
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = navController
    window?.makeKeyAndVisible()
    
    return true
  }
}

