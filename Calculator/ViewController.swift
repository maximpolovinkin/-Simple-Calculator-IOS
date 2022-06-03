//
//  ViewController.swift
//  Calculator
//
//  Created by Максим Половинкин on 03.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    

    var operationSign = false
    var firsNumber: Double = 0
    var secondNumber: Double = 0
    var operationId = 0
    
    @IBOutlet weak var mainLabel: UILabel!
     
    @IBAction func result(_ sender: UIButton) {
        if operationSign{
            mainLabel.text?.removeAll()
            operationSign = false
            mainLabel.text = mainLabel.text! + String(sender.tag)

            secondNumber = Double(mainLabel.text!)!
        } else{
            mainLabel.text = mainLabel.text! + String(sender.tag)
            firsNumber = Double(mainLabel.text!)!
        }
        
    }
    @IBAction func clear(_ sender: UIButton) {
        mainLabel.text?.removeAll()
    }
    @IBAction func operations(_ sender: UIButton) {
        
        switch sender.tag {
        case 10:
            if Int(mainLabel.text!)! < 0 {
                mainLabel.text = String(abs(Int(mainLabel.text!)!))
            } else{
                mainLabel.text = String(-Int(mainLabel.text!)!)
            }
            operationSign = true
            break
        case 11:
                mainLabel.text = String((Double(mainLabel.text!)!)/100)
                operationSign = true
            break
        case 12:
            mainLabel.text = "÷"
            operationSign = true
            break
        case 13:
            mainLabel.text = "x"
            operationSign = true
            break
        case 14:
            mainLabel.text = "-"
            operationSign = true
            break
        case 15:
            mainLabel.text = "+"
            operationSign = true
            break
        case 16:
            switch operationId{
            case 12:
                mainLabel.text = String(firsNumber/secondNumber)
                break
            case 13:
                mainLabel.text = String(firsNumber*secondNumber)
                break
            case 14:
                mainLabel.text = String(firsNumber-secondNumber)
                break
            case 15:
                mainLabel.text = String(firsNumber+secondNumber)
                break
            default:
                mainLabel.text = "+"
            }
            operationSign = false
            firsNumber = Double(mainLabel.text!)!
            break
        default:
            mainLabel.text = "1"
        }
        operationId = sender.tag
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

