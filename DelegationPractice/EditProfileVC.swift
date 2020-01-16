
import UIKit


protocol EditNameDelegation: class {
    func resetName()
}

class EditProfileVC: UIViewController {
    weak var delegat: EditNameDelegation?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func resetTapped(_ sender: Any) {
        self.delegat?.resetName()
    }
}

