//
//  ViewController.swift
//  AlamofirePods
//
//  Created by Md. Mehedi Hasan on 16/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func getButtonClicked(_ sender: Any) {
        
        self.textview.text = "button clicked"
    }
    

}

