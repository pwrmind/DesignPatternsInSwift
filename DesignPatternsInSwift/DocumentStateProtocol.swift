//
//  DocumentStateProtocol.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 22.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

protocol DocumentStateProtocol {
    var name: String { get }
    func getDocumentState(context: DocumentContextProtocol)
}