//
//  ViewController.swift
//  Calculator
//
//  Created by Fredrick Ohen on 10/20/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad() 
  }

  @IBOutlet weak var digitDisplayLabel: UILabel!
  
  @IBAction func touchDigit(_ sender: UIButton) {
    
    let digit = sender.currentTitle
    print("\(String(describing: digit)) was touched")
  }
  

}

