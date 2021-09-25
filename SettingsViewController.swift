//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jess on 9/25/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipSlide: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        defaults.set(tipSlide, forKey: "tipSlide")
        
        defaults.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
