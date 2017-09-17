//
//  MonthResultsViewController.swift
//  BujoInspo
//
//  Created by Lena Renshaw on 9/16/17.
//  Copyright © 2017 Lena Renshaw. All rights reserved.
//

import UIKit

class MonthResultsViewController: UIViewController {
    @IBOutlet weak var newTitle: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    //@IBOutlet var myImage: UIView!
    
    var imageOptions: [String] = [String]()
    
    var minimalist: Bool = false
    var flora: Bool = false
    var color: Bool = false
    
    var glance: Bool = false
    var calendar: Bool = false
    var todo: Bool = false
    var goals: Bool = false
    
    func generateImage() {
        if (imageOptions.count == 0) {
            newTitle.text = "Please select at least one feature!"
            myImage.isHidden = true
        } else {
            let size = UInt32(imageOptions.count)
            let randomIndex = Int(arc4random_uniform(size))
            myImage.image = UIImage(named: imageOptions[randomIndex])
        }
    }
    
    @IBAction func regenerate(_ sender: Any) {
        generateImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (minimalist) {
            imageOptions.append("minimalist1")
            imageOptions.append("minimalistgoals")
        }
        if (flora) {
            imageOptions.append("flora1")
            imageOptions.append("flora2")
        }
        if (color) {
            imageOptions.append("watercolors")
            imageOptions.append("watercolorcalendar")
        }
        if (glance) {
            imageOptions.append("minimalist1")
        }
        if (calendar) {
            imageOptions.append("watercolorcalendar")
        }
        if (todo) {
            imageOptions.append("watercolors")
        }
        if (goals) {
            imageOptions.append("minimalistgoals")
        }
        
        if (imageOptions.count == 0) {
            newTitle.text = "Please select at least one feature!"
            myImage.isHidden = true
        } else {
            
        }
        
        
        generateImage()
        // Do any additional setup after loading the view.
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
