//
//  Coordinator.swift
//  Pods-RLACoordinator_Example
//
//  Created by Juan José Jr Granados Moreno on 6/19/19.
//

import UIKit

public protocol Coordinator: AnyObject {
  var children: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}
