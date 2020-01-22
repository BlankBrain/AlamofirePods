//
//  Models.swift
//  AlamofirePods
//
//  Created by Md. Mehedi Hasan on 19/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import Foundation

struct Course :Decodable {
    
        let id: Int
        let name: String
        let link: String
        let imageUrl: String
        let number_of_lessons: Int
    
}
struct Weather :Decodable{
    let latitude: Double?
    let longitude: Double?
    let timezone: String?
    let currently: Currently?
    let minutely: Minutely?
    let hourly: Hourly?
    
    
}
struct Currently :Decodable{
    let time: Double?
    let summary: String?
    let icon: String?
    let  nearestStormDistance: Double?
    let  nearestStormBearing: Double?
    let  precipIntensity: Double?
    let  precipProbability: Double?
    let  temperature: Double?
    let  apparentTemperature: Double?
    let  dewPoint: Double?
    let  humidity: Double?
    let  pressure: Double?
    let  windSpeed: Double?
    let  windGust: Double?
    let  windBearing: Double? 
    let  cloudCover: Double?
    let  uvIndex: Double?
    let  visibility: Double?
    let  ozone: Double?
}

struct Minutely :Decodable{
    let summary: String?
    let icon: String?
    let data: [minutelyData]
    
}
struct Hourly :Decodable{
    let summary: String?
    let icon: String?
    let data: [hourlyData]
}
struct minutelyData :Decodable{
    let time: Double?
    let precipIntensity: Double?
    let precipProbability: Double?
}
struct hourlyData : Decodable{
    let time: Double?
    let summary: String?
    let icon: String?
    let  precipIntensity: Double?
    let  precipProbability: Double?
    let  temperature: Double?
    let  apparentTemperature: Double?
    let  dewPoint: Double?
    let  humidity: Double?
    let  pressure: Double?
    let  windSpeed: Double?
    let  windGust: Double?
    let  windBearing: Double?
    let  cloudCover: Double?
    let  uvIndex: Double?
    let  visibility: Double?
    let  ozone: Double?
    
}
