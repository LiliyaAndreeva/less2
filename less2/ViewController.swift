//
//  ViewController.swift
//  less2
//
//  Created by Лилия Андреева on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!

    @IBOutlet weak var greetingButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButtom.layer.cornerRadius = 10
        greetingButtom.setTitle("Show Greeting", for: .normal)
    }

    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
//        if greetingLabel.isHidden {
//            greetingButtom.setTitle("Show Greeting", for: .normal)
//        } else {
//            greetingButtom.setTitle("Hide greeting", for: .normal)
//        }
        greetingButtom.setTitle(
            greetingLabel.isHidden
            ? "Show Greeting"
            : "Hide greeting",
            for: .normal
        )
    }
    
}

