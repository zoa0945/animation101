//
//  ViewController.swift
//  animation101
//
//  Created by Mac on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bellImage: UIImageView!
    @IBOutlet weak var shakeButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        var delay = 0.0
        var angle: CGFloat = 7
        var vibe = 5
        while vibe > 0 {
            UIView.animate(withDuration: 0.1, delay: delay, options: .curveEaseIn, animations: {
                self.bellImage.transform = CGAffineTransform(rotationAngle: .pi / angle)
            }, completion: nil)
            
            angle += 1
            angle *= -1
            vibe -= 1
            delay += 0.1
        }

        UIView.animate(withDuration: 0.1, delay: 0.4, options: .curveEaseIn, animations: {
            self.bellImage.transform = CGAffineTransform(rotationAngle: 0)
        }, completion: nil)
    }
    
}

