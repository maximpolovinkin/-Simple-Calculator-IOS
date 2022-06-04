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
    

   
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var modulButton: UIButton!
    @IBOutlet weak var divButton: UIButton!
    @IBOutlet weak var modButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var differenseButton: UIButton!
    @IBOutlet weak var summaryButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var commaButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    
    
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
        roundButtons()
        // Do any additional setup after loading the view.
    }

    func roundButtons(){
       clearButton.layer.cornerRadius = clearButton.bounds.height / 2
        modulButton.layer.cornerRadius = modulButton.bounds.height / 2
        modButton.layer.cornerRadius = modButton.bounds.height / 2
        divButton.layer.cornerRadius = divButton.bounds.height / 2
        multiplicationButton.layer.cornerRadius = multiplicationButton.bounds.height / 2
        differenseButton.layer.cornerRadius = differenseButton.bounds.height / 2
        summaryButton.layer.cornerRadius = summaryButton.bounds.height / 2
        equalButton.layer.cornerRadius = equalButton.bounds.height / 2
        oneButton.layer.cornerRadius = twoButton.bounds.height / 2
        threeButton.layer.cornerRadius = threeButton.bounds.height / 2
        fourButton.layer.cornerRadius = fourButton.bounds.height / 2
        fiveButton.layer.cornerRadius = fiveButton.bounds.height / 2
        sixButton.layer.cornerRadius = sixButton.bounds.height / 2
        sevenButton.layer.cornerRadius = sevenButton.bounds.height / 2
        eightButton.layer.cornerRadius = eightButton.bounds.height / 2
        nineButton.layer.cornerRadius = nineButton.bounds.height / 2
        zeroButton.layer.cornerRadius = zeroButton.bounds.height / 2
        commaButton.layer.cornerRadius = commaButton.bounds.height / 2
        twoButton.layer.cornerRadius = twoButton.bounds.height / 2
        
    }
}

