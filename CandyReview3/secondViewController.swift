//
//  secondViewController.swift
//  CandyReview3
//
//  Created by Lina Dacanay on 11/2/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var tableView: UITableView!
    
    var myHardCandyArray =  ["Jolly Ranchers", "Life savers", "Kopiko Coffee Candy", "Peppermint" ]
    
    var myRatingsArray = ["Rating: 3/5", "Rating: 2/5", "Rating: 5/5", "Rating: 4/5"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myHardCandyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 
    {
     
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let text = myHardCandyArray[indexPath.row]
        
        Cell.detailTextLabel?.text = myRatingsArray[indexPath.row]
        
        Cell.textLabel?.text = text
        return Cell
        
    }
    // Part 7
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                {
                    tableView.deselectRow(at: indexPath, animated: true)
                }

    //Part 8 (P-List = Property List)
    
    var categoryOneImagesData = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
                        let dict = NSDictionary(contentsOfFile: path!)
                        categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
        
    }
   
   //Part 9
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! detailTwoViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryOneImagesData[imageIndex!]
                }
            }
    
    
    
    
}
