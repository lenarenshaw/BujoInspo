//
//  MonthViewController.swift
//  BujoInspo
//
//  Created by Lena Renshaw on 9/16/17.
//  Copyright © 2017 Lena Renshaw. All rights reserved.
//

import UIKit

class MonthViewController: UIViewController {

    var minimalistPress: Bool = false
    var floraPress: Bool = false
    var colorPress: Bool = false
    
    var glancePress: Bool = false
    var calendarPress: Bool = false
    var todoPress: Bool = false
    var goalsPress: Bool = false
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let vc = segue.destination as? MonthResultsViewController
        vc?.minimalist = minimalistPress
        vc?.flora = floraPress
        vc?.color = colorPress
        vc?.glance = glancePress
        vc?.calendar = calendarPress
        vc?.todo = todoPress
        vc?.goals = goalsPress
    }
    
    @IBOutlet weak var flora: UIButton!
    @IBOutlet weak var color: UIButton!
    @IBAction func floraPressed(_ sender: Any) {
        flora.setTitleColor(.black, for: .normal)
        floraPress = true
    }
    @IBOutlet weak var calendar: UIButton!
    @IBAction func calendarPressed(_ sender: Any) {
        calendar.setTitleColor(.black, for: .normal)
        calendarPress = true
    }
    @IBOutlet weak var goal: UIButton!
    @IBAction func goalPressed(_ sender: Any) {
        goal.setTitleColor(.black, for: .normal)
        goalsPress = true
    }
    @IBAction func todoPressed(_ sender: Any) {
        todo.setTitleColor(.black, for: .normal)
        todoPress = true
    }
    @IBOutlet weak var todo: UIButton!
    @IBAction func glancePressed(_ sender: Any) {
        glance.setTitleColor(.black, for: .normal)
        glancePress = true
    }
    @IBOutlet weak var glance: UIButton!
    @IBAction func colorPressed(_ sender: Any) {
        color.setTitleColor(.black, for: .normal)
        colorPress = true
    }
    @IBOutlet weak var minimalist: UIButton!
    @IBAction func minimalistPressed(_ sender: Any) {
        minimalist.setTitleColor(.black, for: .normal)
        minimalistPress = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
