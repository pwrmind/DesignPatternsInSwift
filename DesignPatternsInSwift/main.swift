//
//  main.swift
//  DesignPatternsInSwift
//
//  Created by Алексей Бабанов on 14.07.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import Foundation

print("Hello, World!")

var c = 0;
for arg in Process.arguments {
    print("argument \(c) is: \(arg)")
    c += 1
}