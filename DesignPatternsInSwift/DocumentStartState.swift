//
//  StartDocumentState.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 22.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

class DocumentStartState: DocumentStateProtocol {
    let _name: String = "start state"
    
    var name: String {
        return _name
    }
    
    func getDocumentState(context: DocumentContextProtocol) {
        print("state is \(_name)")
    }
}