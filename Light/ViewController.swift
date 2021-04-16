//
//  ViewController.swift
//  Light
//
//  Created by Dylan Park on 2021-04-15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightButton: UIButton!
    
    @IBOutlet var bgButton: UIButton!
    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

     func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
   
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
       
    }
    
    fileprivate func updaeBG() {
        if lightOn {
            view.backgroundColor = .orange
            bgButton.setTitle("OFF", for: .normal)
        } else {
            view.backgroundColor = .blue
            bgButton.setTitle("ON", for: .normal)
        }
    }
    
    @IBAction func button2Pressed(_ sender: Any) {
        lightOn.toggle()
        updaeBG()
        

        
    }
}

