//
//  HomeScreenViewController.swift
//  IosDay5DataStorage
//
//  Created by MacStudent on 2019-07-04.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let userDefault = UserDefaults.standard
        if let email = userDefault.string(forKey: "userEmail"){
            print(email)
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

}
