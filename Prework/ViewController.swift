import UIKit

//Access UserDefaults
let defaults = UserDefaults.standard

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlide: UISlider!
    @IBOutlet weak var tipSlideLabel: UILabel!
    @IBOutlet weak var billSplit: UISegmentedControl!
    @IBOutlet weak var billExchange: UILabel!
    @IBOutlet weak var currencyType: UISegmentedControl!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark

        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
            self.title = "Tip Calculator"
        
        let defaults = UserDefaults.standard
        
        // Get an Integer value.
        let intValue = defaults.integer(forKey: "tipSlide")
    
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tip Percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Let Split amount to be up to 4 people
        let splitAmount = [1, 2, 3, 4]
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        let total = (bill + tip) / Double(splitAmount[billSplit.selectedSegmentIndex])
        totalLabel.text = String(format: "$%.2f", total)
        
        
        // Update Bill Exchange
        let splitExchange = [1, 1.27, 1.3]
        let totalExchange = total/Double(splitExchange[currencyType.selectedSegmentIndex])
        
        billExchange.text = String(format: "$%.2f", Double(totalExchange))
    }
    
    @IBAction func calculateTipSlide(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let valueSlide = Double(floor(tipSlide.value*100)/100)
        tipSlideLabel.text = String(format: "%.0f%%", valueSlide*100)
        let tip = bill * Double(valueSlide)
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Let Split amount to be up to 4 people
        let splitAmount = [1, 2, 3, 4]
        
        // Update Total Amount
        let total = (bill + tip) / Double(splitAmount[billSplit.selectedSegmentIndex])
        totalLabel.text = String(format: "$%.2f", total)
        
        // Update Bill Exchange
        let splitExchange = [1, 1.27, 1.3]
        let totalExchange = total/Double(splitExchange[currencyType.selectedSegmentIndex])
        
        billExchange.text = String(format: "$%.2f", Double(totalExchange))
    }
    
    @IBAction func calculateSplit(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tip Percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Let Split amount to be up to 4 people
        let splitAmount = [1, 2, 3, 4]
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        let total = (bill + tip) / Double(splitAmount[billSplit.selectedSegmentIndex])
        totalLabel.text = String(format: "$%.2f", total)
        
        // Update Bill Exchange (currency rate as of July 27th, 2021)
        let splitExchange = [1, 1.27, 1.3]
        let totalExchange = total/Double(splitExchange[currencyType.selectedSegmentIndex])
        
        billExchange.text = String(format: "$%.2f", Double(totalExchange))
    }
    
    @IBAction func calculateCurrency(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tip Percentage
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Let Split amount to be up to 4 people
        let splitAmount = [1, 2, 3, 4]
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        let total = (bill + tip) / Double(splitAmount[billSplit.selectedSegmentIndex])
        totalLabel.text = String(format: "$%.2f", total)
        
        // Update Bill Exchange
        let splitExchange = [1, 1.27, 1.3]
        let totalExchange = total/Double(splitExchange[currencyType.selectedSegmentIndex])
        
        billExchange.text = String(format: "$%.2f", Double(totalExchange))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
}
