//
//  LoginViewController.swift
//  IosDay5DataStorage
//
//  Created by MacStudent on 2019-07-04.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var email_txt: UITextField!
    
    @IBOutlet weak var password_txt: UITextField!
    
    @IBOutlet weak var remember_switch: UISwitch!
  
    @IBOutlet weak var login_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func doLogin(_ sender: UIButton) {
    
        
        let strEmail : String
        let strPassword : String
    
        if !email_txt.text!.isEmpty{
            strEmail = email_txt.text!
            if !password_txt.text!.isEmpty{
                strPassword = password_txt.text!
                
                
                if remember_switch.isOn {
                    let userDefault = UserDefaults.standard
                    
                    userDefault.setValue(strEmail, forKey: "userEmail")
                    userDefault.setValue(strPassword, forKey: "userPassword")
                    
                
                }
                
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let  studentVC = sb.instantiateViewController(withIdentifier: "homeScreenVC") as! HomeScreenViewController
                
                self.present(studentVC, animated: true, completion: nil)
            }else{
                
                
        
                 let alert = UIAlertController(title: "Error", message: "Please enter the valid password", preferredStyle: .alert)
                let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okButton)
            }
        }
        else{
            let alert = UIAlertController(title: "Error", message: "Please enter the valid email", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okButton)
        }
        
      
    
    }
    
    
    @IBAction func doRemember(_ sender: Any) {
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
