//
//  Storyboarded.swift
//  CoordinatorSample
//
//  Created by Juan José Jr Granados Moreno on 6/19/19.
//  Copyright © 2019 FIS. All rights reserved.
//

import UIKit

public protocol Storyboarded {
  static func instantiate(fromStoryboard name: String) -> Self
}

public extension Storyboarded where Self: UIViewController {
  
  static func instantiate(fromStoryboard name: String) -> Self {
    
    let fullName = NSStringFromClass(self)
    let components = fullName.components(separatedBy: ".")
    print("Components: ", components)
    let className = components[1]
    let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
    
    guard let controller = storyboard.instantiateViewController(withIdentifier: className) as? Self else {
      fatalError("Could not find the view controller with identifier: \(className)")
    }
    
    return controller
  }
}
