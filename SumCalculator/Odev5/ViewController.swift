//
//  ViewController.swift
//  Odev5
//
//  Created by Mina İnal on 5.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputLabel: UILabel!
    
    var op:String = ""
    var sym:String = ""
    var result:Int = 0
    var num:String = "0"
    var isEnd:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.text = String(result)
        
    }

    @IBAction func acButton(_ sender: Any) {
       ac()
    }
    @IBAction func delButton(_ sender: Any) {
        delOperation()
    }
    @IBAction func oneButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
       addToOperation(number: "1")
    }
    @IBAction func twoButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "2")
    }
    @IBAction func threeButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "3")
    }
    @IBAction func fourButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "4")
    }
    @IBAction func fiveButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "5")
    }
    @IBAction func sixButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "6")
    }
    @IBAction func sevenButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "7")
    }
    @IBAction func eightButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "8")
    }
    @IBAction func nineButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "9")
    }
    @IBAction func zeroButton(_ sender: Any) {
        if isEnd == true {
            ac()
        }
        addToOperation(number: "0")
    }
    @IBAction func plusButton(_ sender: Any) {
        if sym == "="{
            op = String(result)
            inputLabel.text = op
            num = inputLabel.text!
            addToOperation(number: "+")
         
        } else {
            sym = "+"
            num = inputLabel.text!
            let last = op.last!
            if last == "+"{
              op = String(op.dropLast())
                //print(op)
                addToOperation(number: "+")
            }else{
                addToOperation(number: "+")
            }
        }
        sym = "+"
    }
    
    @IBAction func equalButton(_ sender: Any) {
        let last = op.last!
        sym = "="
        if last == "+"{
            op += num
            eqOperation()
        }else if op.contains("+") == false {
            op = inputLabel.text!
            sumOperation(number: op)
            isEnd = true
        }else{
            eqOperation()
        }
    }
    
    func ac(){
        op = ""
        inputLabel.text = "0"
        result = 0
        num = "0"
        sym = ""
        isEnd = false
    }
    
    func addToOperation(number:String){
        if number == "0" && op == "0" {
            inputLabel.text = op
            isEnd = false
        } else{
            op += number
            inputLabel.text = op
            isEnd = false
        }
        
        //print("::: \(op)")
    }
    
    func delOperation(){
        op = String(op.dropLast())
        inputLabel.text = op
        isEnd = false
        if op == "" {
            inputLabel.text = "0"
        }
    }
    
    func sumOperation(number:String){
        let last = op.last!
        if last == "+"{
            op += number
            eqOperation()
        }else{
            op += "+" + number
            eqOperation()
        }
    }
    
    func eqOperation(){
        let arithmeticExpression = NSExpression(format: op)
        let sumResult = arithmeticExpression.expressionValue(with: nil, context: nil) as! Int
        sym = "="
        inputLabel.text = String(sumResult)
        result = sumResult
        op = String(result)
        isEnd = true
    }
}

