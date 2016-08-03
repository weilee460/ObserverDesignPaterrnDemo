//
//  MainViewController.swift
//  ObserverDesignPatternDemo
//
//  Created by ying on 16/8/2.
//  Copyright © 2016年 ying. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changePeopleInfo(sender: UIButton) {
        var weatherData = WeatherData()
        var currentDisplay = CurrentConditionDisplay(weatherData: weatherData)
        
        weatherData.setMeasurements(80, humidity: 65, pressure: 30.4)
        weatherData.setMeasurements(82, humidity: 70, pressure: 29.2)
        weatherData.setMeasurements(78, humidity: 90, pressure: 29.2)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
