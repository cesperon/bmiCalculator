//Author: Christian Esperon
//Description: BMI Calculator, input height and weight to find BMI

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        //shortens float to two decimals, change value of height label as you change slider
        heightLabel.text = String(format:"%.2f", sender.value)+"m"
        
    }
    

    @IBAction func weightSliderChanged(_ sender: UISlider) {
    
        //shortens float to two decimals, change value of weight label as you change slider
        weightLabel.text = String(format:"%.0f", sender.value)+"Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        
        //performSeque allows you to transition to desired next slide
        self.performSegue(withIdentifier: "goToResult" , sender: self )
        
    }
    
    //this function allows us to prepare controller before transition occurs with segue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        //perfrom check to validate correct controller.
        if segue.identifier == "goToResult" {
            
            //segue.destintion is the viewcontroller that is being segued into.
            //returns a UIViewController and can be narrowed down to ReslutViewController
            //by using as! which is essentially downcasting
            let destinationVC = segue.destination as! ResultViewController
            //set bmiValue for the Results screen
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            //set advice for the Results screen
            destinationVC.advice = calculatorBrain.getAdvice()
            //set color for the Rests screen background
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    
}

 
