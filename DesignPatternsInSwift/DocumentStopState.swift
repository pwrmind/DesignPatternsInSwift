//
//  DocumentStopState.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 22.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

class DocumentStopState: DocumentStateProtocol {
    let _name: String = "stop state"
    
    var name: String {
        return _name
    }
    
    func getDocumentState(context: DocumentContextProtocol) {
        print("state is \(_name)")
    }
}