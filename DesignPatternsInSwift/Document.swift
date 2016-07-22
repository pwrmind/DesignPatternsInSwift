//
//  Document.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 14.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

class Document: DocumentProtocol, ObservableProtocol, ObserverProtocol {
    var _observers = [ObserverProtocol]()
    var _name: String
    
    init(name: String) {
        self._name = name
    }
    
    var name: String {
        return _name
    }
    
    func registerObserver(observer: ObserverProtocol) {
        _observers += [observer]
    }
    
    func removeObserver(observer: ObserverProtocol) {
        for i in _observers.indices {
            if _observers[i] === observer {
                _observers.removeAtIndex(i)
                break
            }
        }
    }
    
    func notifyObserver() {
        for observer in _observers {
            observer.notify(self.name)
        }
    }
    
    func notify(documentName: String) {
        print("\(self.name): the ducument \(documentName) is update")
    }
}