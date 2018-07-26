//
//  AlleeCondiment.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 20/07/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

@objc open class AlleeCondiment: NSObject, BaseMappable {
    
    var id: String?
    var name: String?
    var preModifier: [String]?
    
    var transType: AlleeTransType = .insert
    
    public override init() {
    }
    
    public required init?(map: Map){
        
    }
    
    public func mapping(map: Map) {
        self.id <- map["id"]
        self.name <- map["name"]
        self.preModifier <- map["preModifier"]
    }
}
