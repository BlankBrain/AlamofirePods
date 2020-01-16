//
//  ViewController.swift
//  AlamofirePods
//
//  Created by Md. Mehedi Hasan on 16/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func getButtonClicked(_ sender: Any) {
        
        AF.request("https://api.darksky.net/forecast/e03fba5c687227d65dd03e52b231c81d/37.8267,-122.4233").response{
            response in
            
            self.textview.text = response.debugDescription
            debugPrint(response)
        }
    }
    

}

