//
//  Extensions.swift
//  BluetoothDemoTest1
//
//  Created by RND on 2021/2/3.
//

import Foundation

extension Data {
    func toIntArray() -> [Int]{
        return self.map{
            Int($0)
        }
    }
}
