

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelVisor: UITextField!
    
    private var operation = true
    private var number1 = Double()
    private var number2 = Double()
    var op = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAllVisor()
    }
    
    private func clearAllVisor(){
        labelVisor.text = "0"
        operation = true
    }

    @IBAction func actionClearAll() {
        clearAllVisor()
    }
    
    func addNumberVisor(number:String)
    {
        var textnum = String(labelVisor.text!)
        
        if operation {
            textnum = ""
            operation = false
        }
        
        textnum = textnum + number
        labelVisor.text = textnum
    }
    
    @IBAction func actionButonNumberNove() {
        addNumberVisor(number: "9")
    }
    @IBAction func actionButonNumberOito() {
        addNumberVisor(number: "8")
    }
    @IBAction func actionButonNumberSete() {
        addNumberVisor(number: "7")
    }
    @IBAction func actionButonNumberSeis() {
        addNumberVisor(number: "6")
    }
    @IBAction func actionButonNumberCinco() {
        addNumberVisor(number: "5")
    }
    @IBAction func actionButonNumberQuatro() {
        addNumberVisor(number: "4")
    }
    @IBAction func actionButonNumberTres() {
        addNumberVisor(number: "3")
    }
    @IBAction func actionButonNumberDois() {
        addNumberVisor(number: "2")
    }
    @IBAction func actionButonNumberUm() {
        addNumberVisor(number: "1")
    }
    @IBAction func actionButonNumberZero() {
        addNumberVisor(number: "0")
    }
    @IBAction func actionButonPonto() {
        addNumberVisor(number: ".")
    }
    
    @IBAction func percent() {
        number1 = Double(labelVisor.text!)!
        number1 = number1/100.0
        labelVisor.text = String(number1)
        operation = true
    }
    
    @IBAction func division() {
        op = "/"
        number1 = Double(labelVisor.text!)!
        operation = true
    }
    @IBAction func sum() {
        op = "+"
        number1 = Double(labelVisor.text!)!
        operation = true
    }
    @IBAction func substraction() {
        op = "-"
        number1 = Double(labelVisor.text!)!
        operation = true
    }
    @IBAction func
        multiplication() {
        op = "*"
        number1 = Double(labelVisor.text!)!
        operation = true
    }
    
    @IBAction func equals(_ sender: Any) {
        number2 = Double(labelVisor.text!)!
        
        var result:Double?
    
        switch op {
        case "*":
            result = number1 * number2
            
        case "/":
            result = number1 / number2
            
        case "-":
            result = number1 - number2
            
        case "+":
            result = number1 + number2
            
        default:
            result = 0.0
        }
        
        labelVisor.text = String(result!)
        
        operation = true
    }
}

