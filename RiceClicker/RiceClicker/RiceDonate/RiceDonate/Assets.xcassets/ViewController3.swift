//
//  ViewController3.swift
//  RiceDonate
//
//  Created by 90301422 on 12/20/18.
//  Copyright © 2018 Nico D. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var whiteBox: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
            
            var stopRun = 1
            
            if stopRun == 1 {
                stopRun = stopRun + 1
                UIView.animate(withDuration: 3, animations: {
                    self.whiteBox.transform = CGAffineTransform(translationX: 350, y: -1)
                }, completion: nil)
                
            }
            
            func topMostController() -> UIViewController {
                var topController: UIViewController = UIApplication.shared.keyWindow!.rootViewController!
                while (topController.presentedViewController != nil) {
                    topController = topController.presentedViewController!
                }
                return topController
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.9) {
                if stopRun == 2 {
                    topMostController().performSegue(withIdentifier: "mySegue", sender: topMostController())
                    stopRun = stopRun + 1
                    print("transition")
                    
                }
            }
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


