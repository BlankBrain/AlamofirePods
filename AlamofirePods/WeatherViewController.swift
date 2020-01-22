//
//  WeatherViewController.swift
//  AlamofirePods
//
//  Created by Md. Mehedi Hasan on 19/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit
import Alamofire


class WeatherViewController: UIViewController {
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var timezoneLabel: UILabel!
    @IBOutlet weak var currentlyTextview: UITextView!
    let decoder = JSONDecoder()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func weatherButtonClicked(_ sender: Any) {
        
        AF.request("https://api.darksky.net/forecast/e03fba5c687227d65dd03e52b231c81d/37.8267,-122.4233").validate().responseJSON { response in
            
            do{

                
                let weather = try self.decoder.decode(Weather.self, from: response.data! )
                print(weather.latitude!)
                self.latitudeLabel.text = String(weather.latitude!)
                self.longitudeLabel.text = String(weather.longitude!)
                self.timezoneLabel.text = weather.timezone

            }catch{

                print("error here")
            }
            
            
            
//            if let jsonDictionary = response.value as? [String : Any] {
//
//
//                //currently
//                if let currentWeatherDictionary = jsonDictionary["currently"] as? [String : Any]{
////                    getting value from json dictionary
//                    let summary = currentWeatherDictionary["summary"] as? String
//                    let time = currentWeatherDictionary["time"] as? Double
//                    self.latitudeLabel.text = summary
////                  date formating
//                    let date = Date(timeIntervalSince1970: time!)
//                    let dateFormatter = DateFormatter()
//                    dateFormatter.timeZone = TimeZone(abbreviation: "GMT") //Set timezone that you want
//                    dateFormatter.locale = NSLocale.current
//                    dateFormatter.dateFormat = "MMM d, h:mm a" //Specify your format that you want
//                    let strDate = dateFormatter.string(from: date)
//                    self.timezoneLabel.text = strDate
//
//
//
//                }
////                minuitly object
//
//                 if let minutelyDictionary = jsonDictionary["minutely"] as? [String : Any]{
//
//
//                    print(minutelyDictionary)
//
//                    if let minData = minutelyDictionary["data"] as?  [String : Any ]{
//                        print(minData)
//
//                    }
//                   // print(minutelyDictionary)
//                }
//
//
//            }
//
//                }
            }
        
    }
    

}
