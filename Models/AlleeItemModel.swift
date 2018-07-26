//
//  AlleeItem.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 20/07/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

@objc open class AlleeItem: NSObject, Mappable {
    
    @objc open var id: String?
    @objc open var name: String?
    @objc open var buildCard: String?
    @objc open var trainingVideo: String?
    @objc open var preModifier: [String]?
    @objc open var preparationTime: NSNumber?
    @objc open var quantity: Int = 1
    @objc open var kDSStation: String?
    
    @objc open var transType: AlleeTransType = .insert
    
    @objc open var condiments: [AlleeCondiment]?
    
    
    public override init() {
    }
    
    
    public required init?(map: Map){
        
    }
    
    
    public func mapping(map: Map) {
        self.id <- map["id"]
        self.name <- map["name"]
        self.buildCard <- map["buildCard"]
        self.trainingVideo <- map["trainingVideo"]
        self.preModifier <- map["preModifier"]
        self.preparationTime <- map["preparationTime"]
        self.quantity <- map["quantity"]
        self.kDSStation <- map["kDSStation"]
        
        self.transType <- map["transType"]
        
        self.condiments <- map["condiments"]
    }
}
