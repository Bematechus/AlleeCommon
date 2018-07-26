//
//  AlleeItem.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 20/07/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

@objc open class AlleeItem: NSObject, BaseMappable {
    
    var id: String?
    var name: String?
    var buildCard: String?
    var trainingVideo: String?
    var preModifier: [String]?
    var preparationTime: Double?
    var quantity: Int = 1
    var kDSStation: String?
    
    var transType: AlleeTransType = .insert
    
    var condiments: [AlleeCondiment]?
    
    
    override init() {
        
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
