//
//  ObserverProtocol.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 15.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

protocol ObserverProtocol: class {
    // class-only protocol definition goes here
    func notify(documentName: String)
}