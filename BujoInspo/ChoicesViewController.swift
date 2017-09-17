//
//  ChoicesViewController.swift
//  BujoInspo
//
//  Created by Lena Renshaw on 9/16/17.
//  Copyright © 2017 Lena Renshaw. All rights reserved.
//

import UIKit

class ChoicesViewController: UIViewController {
    
    var myName: String = ""
    @IBOutlet var habitButton: UIView!
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        testLabel.text = "Lovely name, " + myName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
