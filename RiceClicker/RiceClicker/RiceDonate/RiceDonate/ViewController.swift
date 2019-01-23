//
//  ViewController.swift
//  RiceDonate
//
//  Created by 90301422 on 12/12/18.
//  Copyright © 2018 Nico D. All rights reserved.
//

import UIKit

class ViewController: UIViewController, HomeModelProtocol {

    
    var feedItems: NSArray = NSArray()
    var countModel: LocationModel = LocationModel ()
    var currentRiceCount: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view loaded")
        // Do any additional setup after loading the view, typically from a nib.
        
        let homeModel = HomeModel()
        homeModel.delegate = self
        homeModel.downloadItems()
        
    }
    
    func itemsDownloaded(items: NSArray) {
        feedItems = items
        
        
        countModel = (feedItems[0] as? LocationModel)!
        currentRiceCount = countModel.totalRice
        
        print("rice: \(countModel)")
        
        print("riceCount = \(currentRiceCount)")
        
    }
   
}

