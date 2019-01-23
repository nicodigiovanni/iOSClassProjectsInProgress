//
//  TwitterInfoModel.swift
//  SwiftDatabaseTutorial
//
//  Created by Christopher Ching on 2017-06-10.
//  Copyright © 2017 Christopher Ching. All rights reserved.
//

import Foundation

class LocationModel: NSObject {

    /*
     This is the model object that HomeModel uses to construct objects that contain
     items from the database row
    */
    
//    var username: String?
//    var name: String?
//    var id: String?
//    var department: String?
    
    var totalRice: String?
    
    override init()
    {
        //blank default constructor
    }
    
    //construct object with parameters
    //never used i think
    init(totalRice: String) {
        self.totalRice = totalRice
        
    }
    
   
    
}
