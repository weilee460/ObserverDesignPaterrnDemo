//
//  Observer.swift
//  ObserverDesignPatternDemo
//
//  Created by ying on 16/8/3.
//  Copyright © 2016年 ying. All rights reserved.
//

import Foundation

protocol Observer {
    func update(temp: Double, humidity: Double, pressure: Double)
}