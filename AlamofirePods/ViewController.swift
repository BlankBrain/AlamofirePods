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
    @IBOutlet weak var successLabel: UILabel!
    let decoder = JSONDecoder() //declearing decode method
    
    //model for json object
    struct Course : Decodable {
        let id: Int
        let name: String
        let link: String
        let imageUrl: String
        let number_of_lessons: Int
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func getButtonClicked(_ sender: Any) {
        
        AF.request("https://api.letsbuildthatapp.com/jsondecodable/course").responseJSON { response in
            
            do{
                let course = try self.decoder.decode(Course.self , from: response.data! )
//object where the data will be saved >>    decoder method. decode ( model , from data object )
               // self.textview.text = response.data?.base64EncodedString()
                self.successLabel.text = course.name
            }catch{
                print("error parsing json data")  }
            
            }
        
        
        
        }
    
//end of class
}

