//
//  Subject.swift
//  ObserverDesignPatternDemo
//
//  Created by ying on 16/8/3.
//  Copyright © 2016年 ying. All rights reserved.
//

import Foundation

protocol  Subject {
    func registerObserver(observer: Observer)
    func removeObserver(observer: Observer)
    func notifyObservers()
}