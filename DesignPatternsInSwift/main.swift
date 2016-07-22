//
//  main.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 14.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

let doc001 = Document(name: "Doc_001")
let doc002 = Document(name: "Doc_002")
let doc003 = Document(name: "Doc_003")

doc001.registerObserver(doc002)
doc001.registerObserver(doc003)
doc002.registerObserver(doc003)
doc002.registerObserver(doc001)
doc003.registerObserver(doc001)
doc003.registerObserver(doc002)

doc001.notifyObserver()
doc002.notifyObserver()
doc003.notifyObserver()

let documentFactory = DocumentFactory()

let doc004 = documentFactory.registerObserver("Koko")

doc004.registerObserver(doc001)
doc004.registerObserver(doc002)
doc004.registerObserver(doc003)

doc004.notifyObserver()

print("Hello, World!")