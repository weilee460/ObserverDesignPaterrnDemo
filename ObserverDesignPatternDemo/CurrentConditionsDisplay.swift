//
//  CurrentConditionsDisplay.swift
//  ObserverDesignPatternDemo
//
//  Created by ying on 16/8/3.
//  Copyright © 2016年 ying. All rights reserved.
//

import Foundation

class CurrentConditionDisplay: Observer, DisplayElement {
    private var temperature: Double
    private var humidity: Double
    private var weatherData: Subject
    
    init(weatherData: Subject) {
        temperature = 0
        humidity = 0
        self.weatherData = weatherData
        self.weatherData.registerObserver(self)
    }
    
    func update(temp: Double, humidity: Double, pressure: Double) {
        self.temperature = temp
        self.humidity = humidity
        display()
    }
    
    func display() {
        print("Current conditions: \(temperature) F degrees and \(humidity)% humidity")
    }
}