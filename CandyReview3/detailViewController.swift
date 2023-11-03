//
//  detailViewController.swift
//  CandyReview3
//
//  Created by Lina Dacanay on 11/2/23.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var displayLabel3: UILabel!
    
    @IBOutlet weak var displayLabel4: UILabel!
    
    @IBOutlet weak var textViewDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Button Segue to second screen
        
        imageView2.image = UIImage(named: "Peppermint Candy")
        
        displayLabel3.text = "Peppermint Candy Review"
        
        displayLabel4.text = "Rating 4/5"
        
        textViewDescription.text = "The flavor of these peppermint candies was spot on.They had a strong, natural peppermint taste that felt cool and invigorating.It was like a burst of fresh minty air in candy form.The sweetness was well-balanced with the peppermint, leaving a pleasant taste that lingered without being overpowering."
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
