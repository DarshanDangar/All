//
//  AppDelegate.swift
//  DemoSS
//
//  Created by Darshan Dangar on 15/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UIWindowSceneDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        print(#function)
    }
    
   
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print(#function)
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
        print(#function)
    }
    func applicationWillResignActive(_ application: UIApplication) {
        print(#function)
    }
    func applicationWillTerminate(_ application: UIApplication) {
        print(#function)
        
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        print(#function)
    }
    


}

