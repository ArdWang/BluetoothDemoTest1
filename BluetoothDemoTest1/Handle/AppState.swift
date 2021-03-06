//
//  AppState.swift
//  BluetoothDemoTest1
//
//  Created by RND on 2021/2/3.
//

import Foundation
import SwiftUI
import CoreBluetooth
import Combine



struct AppState {
    
    struct Home {
        var spo2Txt = "--"
        var prTxt = "--"
        var piTxt = "--"
        
        var pointArray = [CGPoint]()
        var spacerPostion = CGPoint.zero
        
        var isSoundEnable = true
        var isRefreshWave = true
        
        var mPeripheral: CBPeripheral?
        //var mCentralState:
        // 蓝牙块代码
        var mCentralState: Bluetooth.CentralState = .poweredOn
        var mPeripheralState: Bluetooth.PeripheralState = .unconnected
        
        var protocolSelectIndex = 0 {
            didSet{
                DataParaser.shared.reset(protocolSelectIndex: protocolSelectIndex)
            }
        }
        
        var frequencySelectIndex = 1{
            didSet{
                Bluetooth.shared.setFrequence(frequencySelectIndex)
            }
        }
        
        var filterSelectedIndex = 1{
            didSet{
                Bluetooth.shared.setFilter(filterSelectedIndex)
            }
        }
        
        
        //存储区块代码
        
        var newName = ""
        var softwareVersion = "--"
        var hardwareVersion = "--"
        var bluetoothVersion = "--"
        var error: AppError?
        
    }
    
    struct Device {
        var deviceArray = [CBPeripheral]()
        var isConnected = PassthroughSubject<Bool, Never>()
        var error: AppError?
    }
    
}
