//
//  AlleeOrder.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 20/07/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

@objc open class AlleeOrder: NSObject, Mappable {
    
    @objc open var id: String?
    @objc open var posTerminal: NSNumber?
    @objc open var guestTable: String?
    @objc open var serverName: String?
    @objc open var destination: String?
    @objc open var userInfo: String?
    @objc open var orderMessages: [String]?
    
    @objc open var transType: AlleeTransType = .insert
    
    var orderType: OrderType = .regular
    
    @objc open var items: [AlleeItem]?
    
    
    public override init() {
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
    
    
    @objc open func set(orderType: AlleeOrderType) {
        switch orderType {
        case .regular:
            self.orderType = .regular
            
        case .rush:
            self.orderType = .rush
            
        case .fire:
            self.orderType = .fire
        }
    }
    
    
    @objc public enum AlleeOrderType: Int {
        case regular, rush, fire
    }
    
    
    enum OrderType: String {
        case regular = "REGULAR"
        case rush = "RUSH"
        case fire = "FIRE"
    }
}
