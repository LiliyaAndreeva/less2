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
        greetingButtom.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        greetingButtom.configuration = setupButton(with: greetingLabel.isHidden ? "ShowGreeting" : "Hide Greeting")
    }
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 1, green: 0.5407138467, blue: 0.4221346974, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}

