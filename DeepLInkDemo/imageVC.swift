//
//  imageVC.swift
//  DeepLInkDemo
//
//  Created by MD SAZID HASAN DIP on 24/4/21.
//

import UIKit

class imageVC: UIViewController {

    var message:String?
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

      convertToImage(message)
    }
    
    func convertToImage(_ image64:String?){
        if image64 != nil {
                let decodedData = NSData(base64Encoded: image64!, options: [])
                if let data = decodedData {
                    let decodedimage = UIImage(data: data as Data)
                    image.image = decodedimage
                } else {
                    print("error with decodedData")
                }
            } else {
                print("error with base64String")
            }
    }
}
