//
//  AlleeOrder.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 20/07/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

@objc open class AlleeOrder: NSObject, BaseMappable {
    
    var id: String?
    var posTerminal: Int?
    var guestTable: String?
    var serverName: String?
    var destination: String?
    var userInfo: String?
    var orderMessages: [String]?
    
    var transType: AlleeTransType = .insert
    var orderType: OrderType = .regular
    
    var items: [AlleeItem]?
    
    
    override init() {
        
    }
  
    required public init?(map: Map){
        
    }
    
    public func mapping(map: Map) {
        self.id <- map["id"]
        self.posTerminal <- map["posTerminal"]
        self.guestTable <- map["guestTable"]
        self.serverName <- map["serverName"]
        self.destination <- map["destination"]
        self.userInfo <- map["userInfo"]
        self.orderMessages <- map["orderMessages"]
        
        self.transType <- map["transType"]
        self.orderType <- map["orderType"]
        
        self.items <- map["items"]
    }
    
    enum OrderType: String {
        case regular = "REGULAR"
        case rush = "RUSH"
        case fire = "FIRE"
    }
}
