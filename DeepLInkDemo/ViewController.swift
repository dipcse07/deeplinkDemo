//
//  ViewController.swift
//  DeepLInkDemo
//
//  Created by MD SAZID HASAN DIP on 24/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


/*

in another app just use this code bellow in the didTapToDemo to acess DeepLinkDemo
 import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapToDemo(_ sender: Any) {
        
        let message = "inter mediate".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let demoPath = "sdl://host/inner?message=\(message ?? "")"
        let appUrl = URL(string:  demoPath)!
        
        let application = UIApplication.shared
        if application.canOpenURL(appUrl){
            application.open(appUrl, options: [:], completionHandler: nil)
            
        }else {}
        
        
    }
    

}*/



