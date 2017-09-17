//
//  QuoteGeneratorViewController.swift
//  BujoInspo
//
//  Created by Lena Renshaw on 9/16/17.
//  Copyright © 2017 Lena Renshaw. All rights reserved.
//

import UIKit

class QuoteGeneratorViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var quote: UILabel!
    @IBOutlet weak var generate: UIButton!
    @IBOutlet weak var themePicker: UIPickerView!

    var pickerData: [String] = [String]()
    var inspireData: [String] = [String]()
    var upliftingData: [String] = [String]()
    var contemplativeData: [String] = [String]()
    var loveData: [String] = [String]()
    var empowermentData: [String] = [String]()
    var feminismData: [String] = [String]()
    var randomData: [String] = [String]()
    var selectedValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.themePicker.delegate = self
        self.themePicker.dataSource = self
        
        pickerData = ["-----", "Inspirational", "Uplifting", "Contemplative", "Love", "Empowerment", "Feminism"]
        
        inspireData = ["\"You create your own universe as you go along.\" - Lena Renshaw and Christopher Lee", "\"Dreams and dedication are a powerful combination.\" - William Longood",
                       "\"Believe in your infinite potential. Your only limitations are those you set upon yourself.\" - Roy T. Bennett", "\"Always be yourself and have faith in yourself.\" - Bruce Lee", "\"Genius is 1% inspiration and 99% perspiration.\" -Thomas Edison", "\"With the new day comes new strength and new thoughts.\" - Eleanor Roosevelt", "\"The first step to success is trying.\" -Gabrielle Blom"]
        
        upliftingData = ["\"Stay positive and happy. Work hard and don't give up hope. Be open to criticism and keep learning. Surround yourself with happy, warm and genuine people.\" - Tena Desae", "\"Keep your face to the sunshine and you cannot see a shadow.\" - Helen Keller", "\"You cannot have a positive life and a negative mind.\" - Joyce Meyer", "\"You're going to go through tough times - that's life. But I say, 'Nothing happens to you, it happens for you.' See the positive in negative events.\" - Joel Osteen", "\"If you have a positive attitude and constantly strive to give your best effort, eventually you will overcome your immediate problems and find you are ready for greater challenges.\" - Pat Riley", "\"Virtually nothing is impossible in this world if you just put your mind to it and maintain a positive attitude.\" - Lou Holtz", "\"It's amazing. Life changes very quickly, in a very positive way, if you let it.\" - Lindsey Vonn"]
        
        contemplativeData = ["\"A garden to walk in and immensity to dream in--what more could he ask? A few flowers at his feet and above him the stars.\" - Victor Hugo, Lés Miserables", "\"Muddy water, let stand, becomes clear.\" - Lao Tzu", "\"If there were a little more silence, if we all kept quiet...maybe we could understand something.\" - Federico Fellini", "\"Let your home be you mast and not your anchor.\" - Kahlil Gibran", "\"The greatest enemy of good thinking is busyness.\" - John C. Maxwell", "\"Contemplation is a luxury, requiring time and alternatives.\" - Tahir Shah", "\"No one answer is ever the answer.\" - Ahmed Mostafa"]
        
        loveData = ["\"If you can't handle me at my worst, then you sure as hell don't deserve me at my best.”\" - Marilyn Monroe", "\"You've gotta dance like nobody's watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.\" - William W. Purkey", "\"You'll know you're in love when you can't fall asleep because reality is finally better than your dreams. \" - Dr. Seuss", "\"As he read, I fell in love the way you fall asleep: slowly, and then all at once.\" - John Green", "\"Smile when she makes you happy, let her know when she makes you mad, and miss her when she's not there.\" - Bob Marley", "\"One candle loses nothing by lighting another.\" - Gabrielle Blom", "\"There is nothing I would not do for those who are really my friends. I have no notion of loving people by halves, it is not my nature.\" - Jane Austen"]
        
        empowermentData = ["\"You have been criticizing yourself for years, and it hasn't worked. Try approving of yourself and see what happens.\" - Louise L. Hay", "\"We never know how high we are Till we are called to rise; And then, if we are true to plan, Our statures touch the skies.\" - Emily Dickinson", "\"The most common way people give up their power is by thinking they don't have any.\" - Alice Walker", "\"The process of spotting fear and refusing to obey it is the source of all true empowerment.\" - Martha Beck", "\"For us to regard others as worthy, we have to begin by regarding ourselves as worthy.\" - Stephen Richards", "\"You were put on this earth to achieve your greatest self, to live out your purpose, and to do it courageously.\" - Steve Maraboii", "\"You can, you should, and if you’re brave enough to start, you will.\" - Stephen King"]
        
        feminismData = ["\"A woman without a man is like a fish without a bicycle.\" ― Irina Dunn", "\"I am Woman Phenomenally. Phenomenal Woman, that's me. \" ― Maya Angelou", "\"Who run the world? Girls!\" - Beyoncé", "\"Here's to strong women. May we know them. May we be them. May we raise them.\" - Unknown", "\"Women's rights are human rights. \" - Hillary Clinton", "\"We do as much. We eat as much. We want as much.\" - Sojourner Truth", "\"Girls should never be afraid to be smart. \" - Emma Watson"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    //Selected value
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedValue = pickerData[row] as String
    }
    
    @IBAction func generatePressed(_ sender: Any) {
        
        if (selectedValue == ("Inspirational")) {
            let size = UInt32(inspireData.count)
            let quoteRandom = Int(arc4random_uniform(size))
            quote.text = inspireData[quoteRandom]
            
        } else if (selectedValue == ("Uplifting")) {
            let size = UInt32(upliftingData.count)
            let quoteRandom = Int(arc4random_uniform(size))
            quote.text = upliftingData[quoteRandom]
            
        } else if (selectedValue == ("Contemplative")) {
            let size = UInt32(contemplativeData.count)
            let quoteRandom = Int(arc4random_uniform(size))
            quote.text = contemplativeData[quoteRandom]
            
        } else if (selectedValue == ("Love")) {
            let size = UInt32(loveData.count)
            let quoteRandom = Int(arc4random_uniform(size))
            quote.text = loveData[quoteRandom]
            
        } else if (selectedValue == ("Empowerment")) {
            let size = UInt32(empowermentData.count)
            let quoteRandom = Int(arc4random_uniform(size))
            quote.text = empowermentData[quoteRandom]
            
        } else if (selectedValue == ("Feminism")) {
            let size = UInt32(feminismData.count)
            let quoteRandom = Int(arc4random_uniform(size))
            quote.text = feminismData[quoteRandom]
            
        }
        
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
