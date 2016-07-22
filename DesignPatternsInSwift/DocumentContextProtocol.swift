//
//  DocumentContextProtocol.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 22.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

protocol DocumentContextProtocol {
    var state: DocumentStateProtocol { get set }
}