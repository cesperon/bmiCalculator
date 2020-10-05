//Author: Christian Esperon
//Description: BMI Calculator, input height and weight to find BMI

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //set bmiLabel text to bmi value
        bmiLabel.text = bmiValue
        //set adviceLabel to advice string
        adviceLabel.text = advice
        //set UIColor to background 
        self.view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //return to previous window by dismissing current window
        self.dismiss(animated: true, completion: nil)
    }
    
}
