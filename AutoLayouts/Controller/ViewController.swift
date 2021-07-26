//
//  ViewController.swift
//  AutoLayouts
//
//  Created by Irunya =} on 24/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var pressD: UIButton!
    @IBOutlet weak var gift: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons.forEach {button in button.layer.cornerRadius = 15
            button.layer.borderColor = UIColor.purple.cgColor
            button.layer.borderWidth = 2
        }
        
        self.gift.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func refreshTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        buttons.forEach {button in button.isHidden = false}
        self.gift.isHidden = true
    }
    
    @IBAction func aTapped(_ sender: Any) {
        navigationItem.title = "You got a gift"
        self.gift.isHidden = false
        buttons.forEach {button in button.isHidden = true
        }
    }
    
}
