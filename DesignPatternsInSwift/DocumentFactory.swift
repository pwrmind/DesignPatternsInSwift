//
//  DocumentFactory.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 21.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

class DocumentFactory {
    func registerObserver(documentType: String) -> Document {
        if documentType.isEmpty {
            
        }
        return Document(name: documentType)
    }
}