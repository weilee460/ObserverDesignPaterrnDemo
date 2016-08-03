//
//  WeatherData.swift
//  ObserverDesignPatternDemo
//
//  Created by ying on 16/8/3.
//  Copyright © 2016年 ying. All rights reserved.
//

import Foundation

class WeatherData: Subject {
    
    private var observers: [Observer]
    private var temperature: Double
    private var humidity: Double
    private var pressure: Double
    
    init() {
        observers = [Observer]()
        temperature = 0
        humidity = 0
        pressure = 0
    }
    
    func registerObserver(observer: Observer) {
        observers.append(observer)
    }
    
    func removeObserver(observer: Observer) {
        
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update(temperature, humidity: humidity, pressure: pressure)
        }
    }
    
    private func measurementsChanged() {
        notifyObservers()
    }
    
    func setMeasurements(temperature: Double, humidity: Double, pressure: Double)  {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        measurementsChanged()
    }
}