//
//  WelcomeViewController.swift
//  BujoInspo
//
//  Created by Lena Renshaw on 9/16/17.
//  Copyright © 2017 Lena Renshaw. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var savedName: UILabel?
    @IBOutlet weak var randomField: UITextField!
    var myName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        savedName?.text = myName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let vc = segue.destination as? ChoicesViewController
        vc?.myName = randomField.text!
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
