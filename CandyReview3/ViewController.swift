//
//  ViewController.swift
//  CandyReview3
//
//  Created by Lina Dacanay on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var imageViewOne: UIImageView!
    
    @IBOutlet weak var displayLabelOne: UILabel!
    
    @IBOutlet weak var buttonPressedOne: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Home View
        self.title = "Linaʻs Candy Review"
        
        backgroundImageView.image = UIImage(named: "Background")

        imageViewOne.image = UIImage(named: "Peppermint Candy")
        
        displayLabelOne.text = "Peppermint Candy Review"
        
        buttonPressedOne.setTitle("Learn More", for: .normal)
    }


}

