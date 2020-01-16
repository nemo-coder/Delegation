//
//  ProfileVC.swift
//  DelegationPractice
//
//  Copyright © 2020 xyz. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    weak var delegat: EditNameDelegation?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showEditVC" {
            (segue.destination as? EditProfileVC)?.delegat = delegat
        }
    }

}
