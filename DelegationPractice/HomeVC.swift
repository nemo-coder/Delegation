//
//  HomeVC.swift
//  DelegationPractice
//
//  Copyright © 2020 xyz. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,EditNameDelegation {
    

    @IBOutlet weak var nameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

            let vc:EditProfileVC? =  EditProfileVC()
    vc?.delegat = self
    }
    

    func resetName() {
        nameLbl.text = "Hello Nemo, We are done!"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
}
