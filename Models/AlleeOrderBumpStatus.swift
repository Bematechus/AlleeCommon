//
//  AlleeOrderBumpStatus.swift
//  KDS_IOS
//
//  Created by Rodrigo Busata on 11/12/18.
//  Copyright © 2018 Bematech. All rights reserved.
//

import Foundation

@objc open class AlleeOrderBumpStatus: NSObject, Codable {
    
    var guid: String?
    var id: String?
    var status: AlleeBumpStatus?
}
