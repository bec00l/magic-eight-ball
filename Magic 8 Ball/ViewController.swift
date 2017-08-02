//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by David Hurd on 8/1/17.
//  Copyright © 2017 Imagitale Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImage: UIImageView!
    var imgArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBAction func askButtonPressed(_ sender: Any) {
        updateImage()
    }
    
    func updateImage() {
        magicBallImage.image = UIImage(named: imgArray[Int(arc4random_uniform(5))])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
}

