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
        
        //open this url bellow from safari or from xc command line:
        // sdl://host/inner?message=themessage
        // xcrun simctl openurl booted sdl://host/inner?message=themessage
        print("url \(url)")
        print("url host :\(url.host!)")
        print("url path :\(url.path)")
        let urlPath  = url.path
        let urlHost  = url.host ?? ""
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let rootNavController: UINavigationController!
        rootNavController = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home"))
        if(urlPath == "/inner"){
            let innerPage = mainStoryboard.instantiateViewController(withIdentifier: "InnerPageViewController") as! InnerPageViewController
            let urlComponent = URLComponents(url: url, resolvingAgainstBaseURL: true)
            innerPage.message = urlComponent?.queryItems?.first?.value ?? ""
            rootNavController.pushViewController(innerPage, animated: true)
        } else if (urlPath == "/image"){
            let imagePage = mainStoryboard.instantiateViewController(withIdentifier: "imageVC") as! imageVC
            let urlComponent = URLComponents(url: url, resolvingAgainstBaseURL: true)
            imagePage.message = urlComponent?.queryItems?.first?.value ?? ""
            rootNavController.pushViewController(imagePage, animated: true)
        }
        self.window?.rootViewController = rootNavController
        self.window?.makeKeyAndVisible()
        return true
    }
    
}


