//Author: Christian Esperon
//Description: BMI Calculator, input height and weight to find BMI

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
//        shortens float to two decimals
//        returns as string
        print(String(format:"%.2f", sender.value ))
        heightLabel.text = String(format:"%.2f", sender.value)+"m"
        
//        returns as float
//        print(round(sender.value*100)/100)
    }
    

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        print(String(format:"%.0f", sender.value ))
//        print(round(sender.value))
        weightLabel.text = String(format:"%.0f", sender.value)+"Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
//        BMI = weight(Kg)/(height)^2(m)
        let bmi = weight/(pow(height, 2))
        
        let secondVC = ResultViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

