//
//  AlleeCustomer.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 31/07/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

@objc open class AlleeCustomer: NSObject, Mappable {
    
    @objc open var id: String?
    @objc open var name: String?
    @objc open var phone: String?
    @objc open var phone2: String?
    @objc open var address: String?
    @objc open var address2: String?
    @objc open var city: String?
    @objc open var state: String?
    @objc open var zip: String?
    @objc open var country: String?
    @objc open var email: String?
    @objc open var webmail: String?

    
    @objc open var transType: AlleeTransType = .insert
    
    
    public override init() {
    }
    
    
    public required init?(map: Map){
        
    }
    
    
    public func mapping(map: Map) {
        self.id <- map["id"]
        self.name <- map["name"]
        self.phone <- map["phone"]
        self.phone2 <- map["phone2"]
        self.address <- map["address"]
        self.address2 <- map["address2"]
        self.city <- map["city"]
        self.state <- map["state"]
        self.zip <- map["zip"]
        self.country <- map["country"]
        self.email <- map["email"]
        self.webmail <- map["webmail"]
    }
}
