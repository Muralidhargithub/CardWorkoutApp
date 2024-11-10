 //
//  CardSelectionVC.swift
//  CardWorkoutApp
//
//  Created by Muralidhar reddy Kakanuru on 11/9/24.
//

import UIKit

class CardSelectionVC: UIViewController {
    @IBOutlet var cardImagaView: UIImageView!
    
    //outlet collection
    //drag circle to rest of the buttons to aply changs to that property
    
    @IBOutlet var buttons: [UIButton]!
    var timer: Timer!
    var cards:[UIImage] = Card.allValues
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starttimer()
        
        for button in buttons{
            button.layer.cornerRadius = 8
        }
    }
    
    func starttimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    
    @objc func showRandomImage(){
        
        cardImagaView.image=cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        starttimer()
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
    
    
}
    

    
    
    

