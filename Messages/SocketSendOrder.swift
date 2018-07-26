//
//  SocketSendOrder.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 20/07/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

class SocketSendOrder: BaseSocketMessage {
    
    var order: AlleeOrder?
    
    
    init(guid: String, order: AlleeOrder, deviceSerial: String) {
        super.init(guid: guid, type: TypeSocketMessage.sendOrder, originDeviceSerial: deviceSerial)
        self.order = order
    }
    
    required init?(map: Map){
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        self.order <- map["order"]
    }
}

extension TypeSocketMessage {
    
    static var sendOrder: String {
        get {
            return "SEND_ORDER"
        }
    }
}
