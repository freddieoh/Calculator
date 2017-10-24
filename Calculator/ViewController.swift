//
//  ViewController.swift
//  Calculator
//
//  Created by Fredrick Ohen on 10/20/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  var userIsInTheMiddleOfTyping = false
  
  override func viewDidLoad() {
    super.viewDidLoad() 
  }
  
  

 
  @IBOutlet weak var digitDisplayLabel: UILabel!
  
  var displayValue: Double
  {
    get {
      return Double(digitDisplayLabel.text!)!
    }
    set {
      digitDisplayLabel.text = String(newValue)
    }
  }
  
  @IBAction func performOperation(_ sender: UIButton) {
  
    userIsInTheMiddleOfTyping = false
    
    if let mathmaticalSymbol = sender.currentTitle {
      switch mathmaticalSymbol {
      case "π":
        displayValue = Double.pi
      case "√":
        displayValue = sqrt(displayValue)
      default:
        break
      }
    }
  }
  
  @IBAction func touchDigit(_ sender: UIButton) {
    let digit = sender.currentTitle!
    
    if userIsInTheMiddleOfTyping {
      let textCurrentlyInDisplay = digitDisplayLabel.text!
      digitDisplayLabel.text = textCurrentlyInDisplay + digit
    } else {
      digitDisplayLabel.text = digit
      userIsInTheMiddleOfTyping = true
    }
  }
}

