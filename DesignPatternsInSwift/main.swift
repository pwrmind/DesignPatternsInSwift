//
//  main.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 14.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

let docStartState = DocumentStartState()
let docStopState = DocumentStopState()

let doc001 = Document(name: "Doc_001", state: docStartState)
let doc002 = Document(name: "Doc_002", state: docStartState)
let doc003 = Document(name: "Doc_003", state: docStartState)

doc001.registerObserver(doc002)
doc001.registerObserver(doc003)
doc002.registerObserver(doc003)
doc002.registerObserver(doc001)
doc003.registerObserver(doc001)
doc003.registerObserver(doc002)

print(doc001.state.name)
doc001.state = docStopState
print(doc001.state.name)
doc002.state = docStopState
doc003.state = docStopState

print("Hello, World!")