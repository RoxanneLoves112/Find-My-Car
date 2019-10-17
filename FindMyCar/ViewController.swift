//
//  ViewController.swift
//  FindMyCar
//
//  Created by Roxanne Zhang on 10/8/19.
//  Copyright © 2019 Roxanne Zhang. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  
  let location = Location()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func hereIsMyCar() {
    location.getCurrentLocation()
    let mess = generateMessage()
    let alert = UIAlertController(title: "Saved", message: mess, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    
    self.present(alert, animated: true)
    location.saveLocation()
  }
  
  

  func generateMessage() -> String {
    let message = "Your car is currently at: \n( \(location.latitude), \(location.longitude) )\n\nWhen you want a map to this location, simply press the 'Where is my car?' button."
    return message
  }
}

