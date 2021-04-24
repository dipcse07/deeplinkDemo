//
//  AppDelegate.swift
//  DeepLInkDemo
//
//  Created by MD SAZID HASAN DIP on 24/4/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
            
            print("url \(url)")
            print("url host :\(url.host!)")
            print("url path :\(url.path)")
            
            
            let urlPath  = url.path
            let urlHost  = url.host ?? ""
            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
//            if(urlHost != "somedomain.com")
//            {
//                print("Host is not correct")
//                return false
//            }
            
            if(urlPath == "/inner"){
                let rootNavController: UINavigationController!
                rootNavController = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home"))
                let innerPage = mainStoryboard.instantiateViewController(withIdentifier: "InnerPageViewController") as! InnerPageViewController
                rootNavController.pushViewController(innerPage, animated: true)
                self.window?.rootViewController = rootNavController
            } else if (urlPath == "/about"){
                
            }
            self.window?.makeKeyAndVisible()
            return true
        }

}

