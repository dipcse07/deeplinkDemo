//
//  InnerPageViewController.swift
//  DeepLInkDemo
//
//  Created by MD SAZID HASAN DIP on 24/4/21.
//

import UIKit

class InnerPageViewController: UIViewController {

    var message: String?
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messageLabel.text = message ?? ""
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
