//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tomislav Ficko on 28/03/2020.

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askButton.layer.cornerRadius = 10
    
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        imageView.image = ballArray[randomNumber()]
    }
    
    func randomNumber() -> Int {
        return Int.random(in: 0...4)
    }
    
}
