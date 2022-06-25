//
//  ViewController.swift
//  tableViewTask
//
//  Created by fts on 23/06/2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textView: UITextView!
    
    var colorsDesc = [
        
         "danger, anger, and adventure. Our prehistoric ancestors saw red as the color of fire and blood – energy and primal life forces – and most of red's symbolism today arises from its powerful associations in the past",
                                     "Pink, a delicate color that means sweet, nice, playful, cute, romantic, charming, feminine, and tenderness, is associated with bubble gum, flowers, babies, little girls, cotton candy, and sweetness. The color pink is the color of universal love of oneself and of others",
                                     "Blue is a color often found in nature such as the pale blue of a daytime sky or the rich dark blue of a deep pool of water. It is for this reason perhaps that people often describe the color blue as calm and serene. Yet as a cool color, blue can sometimes seem icy, distant, or even cold",
         "Yellow is the color of the sun, smiley faces and sunflowers. It's a happy, youthful color, full of hope and positivity. It's another color that grabs your attention and for that reason can also be used to signify caution, like red and orange",
         "The Color Purple documents the traumas and gradual triumph of Celie, an African American teenager raised in rural isolation in Georgia, as she comes to resist the paralyzing self-concept forced on her by others. Celie narrates her life through painfully "
    ]
    
    var models = ["red","pink","blue","yellow","purple"]
    var colors = [UIColor.red,UIColor.systemPink,UIColor.blue,UIColor.yellow,UIColor.purple]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }


}





extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedColor = models[indexPath.row]
        bottomView.backgroundColor = colors[indexPath.row]
       
        textView.text = colorsDesc[indexPath.row]
        
        print(selectedColor)
     
    }
}

extension ViewController: UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
        
    }
    
  
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        
        
        
        
     
        return cell
    }
}

