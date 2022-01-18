//
//  ViewController.swift
//  LightSignal
//
//  Created by Владимир Усов on 16.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var pressButtonText: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 50
        redView.alpha = 0.3
        
        yellowView.layer.cornerRadius = 50
        yellowView.alpha = 0.3
        
        greenView.layer.cornerRadius = 50
        greenView.alpha = 0.3
        
    }
    
    var light = 1 
    
    @IBAction func pressButton() {
        pressButtonText.setTitle("NEXT", for: .normal)
        
        switch light {
        case 1:
            redView.alpha = 1.0
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            light = 2
            
        case 2:
            redView.alpha = 0.3
            yellowView.alpha = 1.0
            greenView.alpha = 0.3
            light = 3
            
        case 3:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
            light = 1
            
        default:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            light = 0
        }
    }
    
}
