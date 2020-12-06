

import UIKit
import CLTypingLabel
import Firebase

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser != nil {
            let chatVC = storyboard?.instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
            navigationController?.pushViewController(chatVC, animated: true)
        }
        titleLabel.text = K.appName
    }
}
