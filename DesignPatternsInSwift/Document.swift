//
//  Document.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 14.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

class Document: DocumentProtocol, ObservableProtocol, ObserverProtocol, DocumentContextProtocol {
    var _observers = [ObserverProtocol]()
    var _name: String
    var _state: DocumentStateProtocol
    
    init(name: String, state: DocumentStateProtocol) {
        _name = name
        _state = state
    }
    
    var name: String {
        return _name
    }
    
    var state: DocumentStateProtocol {
        get {
            return _state
        }
        set (newState) {
            notifyObserver()
            _state = newState
        }
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