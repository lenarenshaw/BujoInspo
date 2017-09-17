//
//  ViewController.swift
//  BujoInspo
//
//  Created by Lena Renshaw on 9/16/17.
//  Copyright © 2017 Lena Renshaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    var mainName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mainName = nameTextField.text!
    }
    
    //MARK: Actions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let vc = segue.destination as? WelcomeViewController
        vc?.myName = mainName
    }
    
    @IBAction func setName(_ sender: UIButton) {
        
    }
}

